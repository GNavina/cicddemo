from flask import Flask
from flask_cors import CORS
app = Flask(__name__)
CORS(app)
PORT = 5000

@app.rout('/')
def home():
    return "Hello World"

if __name__ == "__main__":
    app.run(PORT, debug=True)