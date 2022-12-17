from flask import Flask, render_template, url_for, request, flash
app = Flask (__name__)
app.secret_key = "secret_key"
@app.route ("/index")
def index():
    print(url_for('index'))
    return render_template('index.html', title="Главная")

@app.route("/about")
def about():
    print(url_for('about'))
    return render_template('about.html', title = "О сайте")

@app.route("/connect", methods=["POST", "GET"])
def connect():
    if request.method =='POST':
        if len(request.form.get("username", "my default")) > 2:
            flash ("Сообщение отправлено. Спасибо", category='success')
        else:
            flash ("Ошибка отправки. Повторите попытку", category='error')
    print(url_for('connect'))
    return render_template('connect.html', title = "Обратная связь")

@app.errorhandler(404)
def pageNotFount(error):
    return render_template('404.html', title="Страница не найдена")
if __name__ == "__main__":
    app.run(debug=True)
