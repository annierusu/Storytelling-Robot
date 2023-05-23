from pynput.keyboard import Key, Listener
import rospy
from std_msgs.msg import String
from qt_nuitrack_app.msg import Gestures
from qt_robot_interface.srv import *
import story_generation as ai
from sentiment_analysis import Classifier, sentiment 
from robot_interaction import Robot
from mock_robot_interaction import Mock_Robot
import asyncio
import websockets
import threading
from threading import Thread
import time
import functools
import webbrowser

#for web module
global_data = None
global_data_received = False
local_data = None #data stored from response from server
lock = threading.Lock()
t = None
#finish the questions
end= False

classifier = Classifier()
robot = Robot()

def config_language():
    speechConfig = rospy.ServiceProxy('/qt_robot/speech/config', speech_config)
    rospy.wait_for_service('/qt_robot/speech/config')
    status = speechConfig("fr-FR",0,100) #NO ROBOT SUPPORT: comment this line



#webserver funcitons 
def await_response():  
    global lock
    global global_data
    global global_data_received

    while True: 
        lock.acquire()
        if global_data_received:
            global_data_received = False
            temp = global_data
            lock.release()
            return temp
        lock.release()
        time.sleep(0.1)

async def handler(websocket, path, callback):
    data = await websocket.recv()
    if(data == "close"):
        await websocket.close()
        exit(0)
        # loop = asyncio.get_event_loop()
        # loop.stop()
        # await loop.close()
    callback(data)

def main_callback(data):
    global lock
    global global_data
    global global_data_received
    lock.acquire()
    global_data_received = True
    global_data = data
    lock.release()

def run_server(callback):
    loop = asyncio.new_event_loop()
    asyncio.set_event_loop(loop)
    loop1 = asyncio.get_event_loop()
    start_server = websockets.serve(functools.partial(handler, callback=callback), "localhost", 10000)
    loop1.run_until_complete(start_server)
    loop1.run_forever()

def start_web_module():
    global t
    t = Thread(target=run_server, args=(main_callback,))
    t.start()
    

def key_transition(key):
    global end  
    if key == Key.esc:
        end = True 

ls = Listener(on_press=key_transition)
ls.start()

def qt_says(message, speech=robot.say_serv_lips):
    (speech)(message)

def begin_ask_questions():
    global end
    while(not end):
        local_data = await_response()
        answer = ai.answer_question(local_data)

        sentences_with_sentiment = classifier.classify(answer)

        for sentence in sentences_with_sentiment:
            s = sentiment(sentences_with_sentiment[sentence])
            qt_says(sentence)
            rospy.sleep(0.2)
            # if s == sentiment.NEUTRAL:
            #     qt_says(sentence) #speak with lip sync
            #     rospy.sleep(0.2)
            # else: 
            #     robot.showEmotion(s)
            #     robot.playGesture(s)
            #     qt_says(sentence, speech=robot.say_serv) #speak without lip sync as showing emotion 
            #     rospy.sleep(0.2)

def main():
    start_web_module()
    webbrowser.open_new_tab('qaExtra.html')
    config_language()
    begin_ask_questions()
    t.join()

if __name__ == '__main__':
    main()