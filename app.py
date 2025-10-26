from flask import Flask
app = Flask(__name__)

@app.route('/')
def home():
    return "Welcome, This is Version 2! Fully automated!"

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=80)