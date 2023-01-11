from pprint import pprint
from flask import Flask, render_template, url_for, session, redirect, request, flash
import os
from peewee import *
from playhouse.db_url import connect
from playhouse.mysql_ext import MySQLConnectorDatabase
from zapros import *
from datetime import datetime
app = Flask(__name__)
app.secret_key = "secret_key"


@app.route("/")
@app.route("/index")
def index():
    print(url_for('index'))
    return render_template('index.html')


@app.route("/about")
def about():
    print(url_for('about'))
    return render_template('about.html', title="О сайте")


@app.route("/connect", methods=["POST", "GET"])
def connect():
    if request.method == 'POST':
        if len(request.form.get("username", "my default")) > 2:
            flash("Сообщение отправлено. Спасибо", category='success')
        else:
            flash("Ошибка отправки. Повторите попытку", category='error')
    print(url_for('connect'))
    return render_template('connect.html', title="Обратная связь")

 #@app.errorhandler (404)
 #def pageNotFount(error):
#     return render_template('404.html', title="Страница не найдена")


@app.route('/login', methods=["POST", "GET"])
def login():
    if session.get('sotrudniki') != None:
        return redirect('/sotrudnik')

    if request.method != 'POST':
        return render_template('login.html')

    res = request.form
    sotrudniki = sotrudnikVxod(res.get('email'), res.get('parol'))
    if sotrudniki:
        session['sotrudniki'] = sotrudniki
        return redirect('/sotrudnik')
    else:
        return redirect('/login')


@app.route('/logout')
def logout():
    session.pop('sotrudniki', None)
    return render_template('index.html')


@app.route('/sotrudnik')
def sotrudnik():
    if session.get('sotrudniki') == None:
        return redirect('/login')
    return render_template('sotrudnik.html', title="Добро пожаловать!", priem=Priem.select(), sotrud=session['sotrudniki'])


@app.route('/inform')
def inform():
    print(url_for('inform'))
    return render_template('inform.html', title="Полезная информация:")


@app.route('/obyav')
def obyav():
    print(url_for('obyav'))
    return render_template('obyav.html', title="Объявления:")


@app.route('/startPriem', methods=['POST'])
def startPriem():
    print(request.form)
    try:
        dt = datetime.fromisoformat(request.form.get('datetime'))
    except:
        return redirect('/priem')
    gra = Gragdanin.create(**(request.form))
    yav = request.form.get('yavka')
    if yav == 'false':
        yav = False
    else:
        yav = True
    # print(dt.date(),gra.idgragdanin,request.form.get('procedure'))
    pr = Priem.create(
        data=dt.date(),
        id_gragdanin=gra.idgragdanin,
        id_prosedura=request.form.get('procedure'),
        id_sotrudnik=session.get('sotrudniki')['idsotrudnik'],
        time=dt.time(),
        yavka=yav
    )
    return redirect(f'/priem2/{pr.idpriem}')


@app.route('/priem')
def priem():

    return render_template('priem.html', title="Заполните данные:", procedures=Procedura.select())


@app.route('/setZapros', methods=["POST"])
def setZapros():
    prid = request.form['prid']
    Zapros.create(id_priem=request.form['prid'], organistiya_idorganistiya=request.form['org'],
                  text=request.form['text'], data=request.form['date'])
    return redirect(f'/priem2/{prid}')


@app.route('/endPriem', methods=["POST"])
def endPriem():
    print(request.form)
    priem = Priem.get(int(request.form['prid']))
    print(priem)
    stat = request.form['status']
    print(priem.rechenie)
    if stat =='Передать в обработку':
        priem.rechenie = 'Передано в обработку'
    elif stat == 'Отказать':
        priem.rechenie = 'Отказать'
    elif stat == 'Выйти и ожидать ответ':
        priem.rechenie = 'Ожидается ответ'
    print(priem.rechenie)

    priem.save()
    print(priem.rechenie)
    return redirect('/sotrudnik')



@app.route('/priem2/<priemid>', methods=["POST", "GET"])
def priem2(priemid):
    if request.method == 'POST':
        if len(request.form.get("sms")) > 10:
            flash("Запрос отправлен успешно.", category='success')
        else:
            flash("Ошибка отправки. Повторите попытку", category='error')
    return render_template('priem2.html', title="Заполните данные:", prid=priemid, organiz=Organistiya.select(), zapr=Zapros.select().where(Zapros.id_priem == int(priemid)))


if __name__ == "__main__":
    app.run(debug=True)
