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
robot = Mock_Robot()

good_index = 0
try_again_index = 0

good_job = ["Bravo!", "Bien joué!", "Super!", "Bien fait!", "Tu es génial!", "Tu es incroyable!", "Tu es fantastique!", "Tu es formidable!", "Tu es merveilleux!", "Tu es extraordinaire!", "Tu es exceptionnel!", "Tu es extra!", "Tu es super!", "Tu es le meilleur!", "Tu es le plus fort!", "Tu es le plus intelligent!"]
tryA_aain = ["Essaye encore!", "Tu peux le faire!", "Tu vas y arriver!", "Ne t'inquiète pas!", "Ne te décourage pas!", "Ne lâche pas!", "Tu vas y arriver!"]

def config_language():
    # speechConfig = rospy.ServiceProxy('/qt_robot/speech/config', speech_config)
    # rospy.wait_for_service('/qt_robot/speech/config')
    # status = speechConfig("fr-FR",0,100)
    print("configed")


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

def qt_says(message, s = None):
    if(s == None):
        robot.say_serv_lips(message)
    else:
        if s == sentiment.NEUTRAL:
            robot.say_serv_lips(message) #speak with lip sync
            rospy.sleep(0.2)
        else: 
            robot.showEmotion(s)
            robot.playGesture(s)
            robot.say_serv(message)#speak without lip sync as showing emotion 
            rospy.sleep(0.2)
   

def begin_encouragement():
    global good_index
    global try_again_index
    global end 

    while(not end):
        local_data = await_response()
        print(local_data)
        if(int(local_data) == 0):
            print("hi")
            qt_says(good_job[good_index])
            rospy.sleep(0.2)
            good_index = (good_index + 1) % len(good_job)
            continue
        elif(int(local_data) == 1):
            qt_says(tryA_aain[try_again_index])
            rospy.sleep(0.2)
            try_again_index = (try_again_index + 1) % len(tryA_aain)
            continue
        else:
            continue
    print("END")
    exit(0)

def main():
    start_web_module()
    webbrowser.open_new_tab('encExtra.html')
    config_language()
    print("configed")
    begin_encouragement()
    t.join()

if __name__ == '__main__':
    main()