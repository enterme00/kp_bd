from flask import Flask, render_template, url_for, session,redirect,request, flash
import os
from peewee import *
from playhouse.db_url import connect
from playhouse.mysql_ext import MySQLConnectorDatabase
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

@app.route("/profile/<username>")
def profile(username):
    if 'userLogged' not in session or session ['userLogged'] != username:
        abort(401)
    return f"Профиль пользователя:{username}"
@app.route("/login", methods=["POST", "GET"])
def login():
     if 'userLogged' in session:
         return redirect(url_for('profile',username=session['userLogged']))
     elif request.method=='POST' and request.form['username']== "suicidalsun@gmail.com" and request.form['psw']=="123":
         session['userLogged']=request.form['username']
         return redirect(url_for('profile',username=session['userLogged']))
     return render_template('login.html', title="Авторизация")

if __name__ == "__main__":
    app.run(debug=True)
