import asyncio
import websockets
import threading
from threading import Thread
import time
import functools
import webbrowser

lock = threading.Lock()
global_data = None
global_data_received = False
t = None

#Handler for the server
async def handler(websocket, path, callback):
    data = await websocket.recv()
    if(data == "close"):
        callback(data) #new line
        await websocket.close()
        exit(0)
    callback(data)

#Run the server       
def run_server(callback):
    loop = asyncio.new_event_loop()
    asyncio.set_event_loop(loop)
    loop1 = asyncio.get_event_loop()
    start_thread = websockets.serve(functools.partial(handler, callback=callback), "localhost", 10000)
    loop1.run_until_complete(start_thread)
    loop1.run_forever()

#Set the data
def main_callback(data):
    global lock
    global global_data
    global global_data_received
    lock.acquire()
    global_data_received = True
    global_data = data
    lock.release()

#Wait for a response from the client (web module)
def await_response():
    global lock
    global global_data
    global global_data_received
    while True:
        lock.acquire()
        if(global_data_received):
            global_data_received = False
            temp = global_data
            lock.release()
            return temp
        lock.release()
        time.sleep(0.1)

#Start a new thread for the server
def start_thread():
    global t
    t = Thread(target=run_server, args=(main_callback,))
    t.start()
#Join the thread
def join_thread():
    global t
    t.join()

if __name__ == "__main__":
    start_thread()