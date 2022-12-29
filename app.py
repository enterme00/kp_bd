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


@app.route('/logout')
def logout():
    session['sotrudniki'] = None
    return redirect('/')

@app.route('/login', methods=['get','post'])
def login():
    res= request.form
    sotrudniki= sotrudnikVxod(res.get('email'),res.get ('parol'))
    if sotrudniki:
        session['sotrudniki']=sotrudniki
        return redirect('/login')
    else:
        return redirect ('/sotrudnik')

@app.route('/sotrudnik', methods=['post','get'])
def sotrudnik():
    res= request.form
    dann=sotridniki_dann(res.get('imya'),res.('id'))
    if 'sotrudniki' in session:
        session['sotrudniki'] = dann  # чтение и обновление данных сессии
    else:
        session['sotrudniki'] = 1
        return format(session('sotrudniki'))
    return render_template('sotrudnik.html', title="Добро пожаловать!")
if __name__ == "__main__":
    app.run(debug=True)
