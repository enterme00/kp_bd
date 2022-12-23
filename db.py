import os
from peewee import *
mysql_db = MySQLDatabase('kp', user='root', password='3194979l', host='localhost', port=3306, charset='utf8mb4')

class UnknownField(object):
    def __init__(self, *_, **__): pass

class BaseModel(Model):
    class Meta:
        database = mysql_db

class DokDlProcedury(BaseModel):
    id_dokument = AutoField()
    naimenovanie = CharField()

    class Meta:
        table_name = 'dok_dl_procedury'

class Gragdanin(BaseModel):
    email = CharField(null=True)
    familiya = CharField()
    idgragdanin = AutoField()
    imya = CharField()
    otchestvo = CharField(null=True)
    telefon = CharField(null=True)

    class Meta:
        table_name = 'gragdanin'

class Organistiya(BaseModel):
    adres = CharField()
    idorganistiya = AutoField()
    kontakty = CharField(null=True)
    naimenovanie = CharField()

    class Meta:
        table_name = 'organistiya'

class PravAkty(BaseModel):
    id_akt = AutoField()
    naimenovanie = CharField()

    class Meta:
        table_name = 'prav_akty'

class Procedura(BaseModel):
    id_akt = ForeignKeyField(column_name='id_akt', field='id_akt', model=PravAkt
y, null=True)
    idprocedura = AutoField()
    kategory = CharField()
    naimenovanie = CharField()
    nomer = CharField()

    class Meta:
        table_name = 'procedura'

class Sotrudnik(BaseModel):
    familiya = CharField(column_name='Familiya')
    imya = CharField(column_name='Imya')
    otchestbo = CharField(column_name='Otchestbo')
    dolgnost = CharField()
    idsotrudnik = AutoField()
    rab_nomer = CharField(null=True)
    stag = IntegerField(null=True)
    email = CharField(null=True)
    parol = CharField(null=True)

    class Meta:
        table_name = 'sotrudnik'

class Priem(BaseModel):
    data = DateField()
    id_gragdanin = ForeignKeyField(column_name='id_gragdanin', field='idgragdani
n', model=Gragdanin)
    id_prosedura = ForeignKeyField(column_name='id_prosedura', field='idprocedur
a', model=Procedura)
    id_sotrudnik = ForeignKeyField(column_name='id_sotrudnik', field='idsotrudni
k', model=Sotrudnik)
    idpriem = AutoField()
    rechenie = CharField()
    time = TimeField()
    yavka = IntegerField()

    class Meta:
        table_name = 'priem'

class Zapros(BaseModel):
    data = DateField()
    id_priem = ForeignKeyField(column_name='id_priem', field='idpriem', model=Pr
iem)
    idzapros = IntegerField()
    organistiya_idorganistiya = ForeignKeyField(column_name='organistiya_idorgan
istiya', field='idorganistiya', model=Organistiya)
    text = CharField()

    class Meta:
        table_name = 'zapros'
        indexes = (
            (('idzapros', 'organistiya_idorganistiya'), True),
        )
        primary_key = CompositeKey('idzapros', 'organistiya_idorganistiya')

class Otvet(BaseModel):
    data = DateField()
    id_zapros = ForeignKeyField(column_name='id_zapros', field='idzapros', model
=Zapros)
    idotvet = AutoField()
    text = CharField()

    class Meta:
        table_name = 'otvet'

class ProceduryDokumenty(BaseModel):
    id_dokumenta = ForeignKeyField(column_name='id_dokumenta', field='id_dokumen
t', model=DokDlProcedury)
    id_procedury = ForeignKeyField(column_name='id_procedury', field='idprocedur
a', model=Procedura)
    idprocedury_dokumenty = AutoField()

    class Meta:
        table_name = 'procedury_dokumenty'

class Spravka(BaseModel):
    name = CharField(column_name='Name')
    idspravka = AutoField()

    class Meta:
        table_name = 'spravka'

class SpravkaGragdanin(BaseModel):
    id_gragdanin = ForeignKeyField(column_name='id_gragdanin', field='idgragdani
n', model=Gragdanin)
    id_sotrudnika = ForeignKeyField(column_name='id_sotrudnika', field='idsotrud
nik', model=Sotrudnik)
    id_spravka = ForeignKeyField(column_name='id_spravka', field='idspravka', mo
del=Spravka)
    idspravka_gragdanin = AutoField()

    class Meta:
        table_name = 'spravka_gragdanin'

class UserLog(BaseModel):
    iduser_log = AutoField()
    operation = CharField(null=True)
    tabl = CharField(null=True)
    u_date = CharField(null=True)

    class Meta:
        table_name = 'user_log'
