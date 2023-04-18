from flask import Flask, render_template, request, jsonify, redirect, url_for, send_from_directory
import webbrowser

story = ''
level_ai = ''
questions = ''


def launch_web_module():

    app = Flask(__name__)

    @app.route('/', methods = ['POST', 'GET'])
    def index(): 
        global story
        global level_ai
        global questions
        if request.method == "POST":
            story = request.form.get("story")
            print(story)
            level_ai = request.form.get("rb")
            print(level_ai)
            questions = request.form.get("questions").splitlines()
            print(questions)
        return render_template('index.html')
    
    #TODO: the below line is kind of weird, you have to wait a couple seconds before it actually loads
    #but at least you dont have to open it yourself
    webbrowser.open('http://localhost:5000/') 
    app.run(debug=True) #host='localhost', port=5000 #TODO: make async (run on a different thread)
 

if __name__ == '__main__':
    launch_web_module()

    
    