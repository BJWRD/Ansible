import os
from flask import Flask
app = Flask(__name__)

@app.route("/")
def main():
    return "Hello World! This is my test result for the ansible-python-flask-deployment"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
