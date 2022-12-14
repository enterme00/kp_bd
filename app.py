from flask import Flask, render_template
app = Flask (__name__)
menu = ["Время и режим работы", "Полезная информация", "Объявления", "Общая информация"]
@app.route ("/")
def index():
    return render_template('index.html', title="Главная ", menu=menu)
@app.route("/about")
def about():
    return render_template('about.html', title = "О сайте", menu = menu)
if __name__ == "__main__":
    app.run(debug=True)
