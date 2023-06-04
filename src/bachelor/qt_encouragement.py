from pynput.keyboard import Key, Listener
import rospy
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

AUTO_SPLIT = True

classifier = Classifier()
robot = Robot()

good_index = 0
try_again_index = 0

good_job = ["Bravo, c'est un super, travail! Continue comme ça!", 
            "Bien joué! Tu as vraiment fait du bon travail et cela se voit!", 
            "Bien fait! Tu as mis beaucoup d'efforts et cela se voit!", 
            "Super travail ! Tu as vraiment réussi, à accomplir cette tâche, de manière exceptionnelle!", 
            "Tu as fait un travail remarquable! Ta persévérance et ta détermination, ont porté leurs fruits! Continue à te surpasser!", 
            "Tu peux être fier de toi ! Ton travail est de grande qualité !"]
try_again = ["Tu peux le faire!", 
             "Continue à,faire, un effort, et tu verras des progrès!",
             "Tu vas, y arriver!", 
             "Ne t'inquiète pas! Essaye encore!", 
             "Ne te décourage pas!"]

def config_language():
    speechConfig = rospy.ServiceProxy('/qt_robot/speech/config', speech_config)
    rospy.wait_for_service('/qt_robot/speech/config')
    status = speechConfig("fr-FR",0,100)
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

def qt_says(message, speech=robot.say_serv_lips):
    speech(message)
   
enc_array =[]
enc_index = 0
def begin_encouragement():
    global good_index
    global try_again_index
    global end 
    global enc_array
    global enc_index

    while(not end):
        local_data = await_response()

        if(int(local_data) == 1):
            enc_array = try_again
            enc_index = try_again_index
            try_again_index = (try_again_index + 1) % len(try_again)
            
        else:
            enc_array = good_job
            enc_index = good_index
            good_index = (good_index + 1) % len(good_job)
        
        enc = classifier.classify(enc_array[enc_index], AUTO_SPLIT)
        for sentence in enc: 
            s = sentiment(enc[sentence])
            if(s == sentiment.NEUTRAL):
                qt_says(sentence)
            else: 
                robot.showEmotion(s)
                robot.playGesture(s)
                qt_says(sentence, speech=robot.say_serv) #speak without lip sync as showing emotion 
            rospy.sleep(0.2)

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