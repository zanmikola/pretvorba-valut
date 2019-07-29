import json
import datetime
import requests
NAPAKA = "Valuta ne obstaja"
PRETVORBE_DATOTEKA = "pretvorbe.json"
slovar = requests.get('https://api.exchangeratesapi.io/latest').json().get("rates")
slovar["EUR"] = 1

class Pretvornik_valut():
    def __init__(self, valuta=None, kolicina=1, druga_valuta=None):
        self.valuta = valuta
        self.kolicina = kolicina
        self.druga_valuta = druga_valuta if druga_valuta != None else None
#    def pretvori_iz_eura(self):
#        if self.valuta == "EUR":
#            return float(self.kolicina)
#        if self.valuta in slovar.keys():
#            return "{} EUR je vreden {} {}.".format((self.kolicina), round(float(self.kolicina) * float(slovar[self.valuta]), 4), (self.valuta))
#        else:
#            return NAPAKA
#    def pretvori_v_eur(self):
#        if self.valuta == "EUR":
#            return float(self.kolicina)
#        if self.valuta in slovar.keys():
#            return  "{} {} je vreden {} EUR".format((self.kolicina), (self.valuta),round(float(self.kolicina) * 1 / float(slovar[self.valuta]), 4))
#        else:
#            return NAPAKA
    def pretvori_iz_prve_v_drugo(self): 
        if self.valuta in slovar.keys() and self.druga_valuta in slovar.keys():
            vrednost_prve_v_eur = round(float(self.kolicina) * 1 / float(slovar[self.valuta]), 4)
            return  round(float(vrednost_prve_v_eur) * float(slovar[self.druga_valuta]), 4)
        else:
            return NAPAKA
    def nalozi_pretvorbe_iz_datoteke(self):
        with open("pretvorbe.json", 'r', encoding='utf-8') as f:
            pretvorbe = json.load(f)
        return pretvorbe
    def zapisi_pretvorbo_v_datoteko(self):
        shranjenePretvorbe = self.nalozi_pretvorbe_iz_datoteke()
        with open("pretvorbe.json", 'w', encoding='utf-8') as f:
            datum = datetime.datetime.now()
            shranjenePretvorbe.append({"datum":str(datum),"izValute":self.valuta,"vValuto":self.druga_valuta,"vrednost":self.kolicina})
            json.dump(shranjenePretvorbe, f)
        





  