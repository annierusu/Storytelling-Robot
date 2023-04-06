#imports for QTRobot 
#import rospy
#from robot_interaction import Robot


#import story_generation
# from pathlib import Path
# import os
from flask import Flask, render_template, request, jsonify, redirect, url_for, send_from_directory
import sys
AUTO_SPLIT = True

app = Flask(__name__)

@app.route('/', methods = ['POST', 'GET'])
def index(): 
    if request.method == "POST":
        story = request.form.get("story")
        print(story)
        rb = request.form.get("rb")
        print(rb)
    return render_template('index.html')

def main():
    print(" hello ")

    #path = str(os.path.join(Path.home(), "Downloads/ai.txt"))
 
    #with open(path,"r") as f:
     #   print(f.read())

    # with open("test_file.txt", 'w') as f:
    #     f.write("hi")
       
    



if __name__ == "__main__":
    main()
    app.run(debug=True) #host='localhost', port=5000
    
    