#imports for QTRobot 
#import rospy
#from robot_interaction import Robot

from pynput.keyboard import Key, Listener, Controller

#import story_generation
from mock_robot_interaction import Mock_Robot
from sentiment_analysis import sentiment, Classifier
from pathlib import Path
import os
from flask import Flask, render_template, request, redirect, url_for, send_from_directory

AUTO_SPLIT = True

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')


def main():
    print(" hello ")

    #path = str(os.path.join(Path.home(), "Downloads/ai.txt"))
 
    #with open(path,"r") as f:
     #   print(f.read())

    with open("test_file.txt", 'w') as f:
        f.write("hi")
       
    



if __name__ == "__main__":
    app.run(debug=True, host = 'localhost')
    