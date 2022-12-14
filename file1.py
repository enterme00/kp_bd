from flask import Flask, render_template
app = Flask (__name__)
@app.route ("/")
def index():
    return render_template('D:\кп бд\kp_bd\kp_bd\templates\index.html')
@app.route("/about")
def about():
    return "<h1> одно окно </h1>"
if __name__ == "__main__":
    app.run(debug=True)
