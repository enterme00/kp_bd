from db import *
from app import *
from playhouse.shortcuts import model_to_dict, dict_to_model
def sotrudnikVxod(email,parol):
    try:
        sotrudnik = Sotrudnik.select()
            .where((Sotrudnik.email == email)& (Sotrudnik.parol == password))
            .get()
        return model_to_dict(sotrudnik)
    except:
        return False
