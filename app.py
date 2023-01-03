from flask import Flask, render_template, url_for, session,redirect,request, flash
import os
from peewee import *
from playhouse.db_url import connect
from playhouse.mysql_ext import MySQLConnectorDatabase
from zapros import *
app = Flask (__name__)
app.secret_key = "secret_key"
@app.route ("/index")
def index():
    print(url_for('index'))
    return render_template('index.html')

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

@app.route('/login', methods=['POST','GET'])
def login():
    res= request.form
    sotrudniki= sotrudnikVxod(res.get('email'),res.get ('parol'))
    if Sotrudnik.email == 'email' & Sotrudnik.parol=='parol':
        session['sotrudniki']=sotrudniki
        return redirect ('/sotrudnik')
    else:
        return redirect ('/login')

@app.route('/logout')
def logout():
    session.pop('sotrudniki',None)
    return render_template('index.html')


@app.route('/sotrudnik')
def sotrudnik():
    return render_template('sotrudnik.html', title="Добро пожаловать!")

@app.route ('/inform')
def inform():
    print(url_for('inform'))
    return render_template('inform.html', title = "Полезная информация:")
@app.route ('/obyav')
def obyav():
    print(url_for('obyav'))
    return render_template('obyav.html', title = "Объявления:")

if __name__ == "__main__":
    app.run(debug=True)
