from db import *
from app import *
from playhouse.shortcuts import model_to_dict, dict_to_model
def sotrudnikVxod(email,parol):
    try:
        sotrudnik = Sotrudnik.select()
            .where(sotrudnik.email == 'email', sotrudnik.parol =='password')
            .get()
        return model_to_dict (userLogged)
    except:
        return False
