import json
import datetime
NAPAKA = "Valuta ne obstaja"
PRETVORBE_DATOTEKA="pretvorbe.json"
slovar = {}
with open("valute.txt") as f:
            vrstice = f.readlines()
            for vrstica in vrstice:
                line = vrstica.split(" ")
                slovar[line[0]] = line[1].strip("\n")
            print(slovar)

class Pretvornik():
    def __init__(self, valuta=None, kolicina=1, druga_valuta=None):
        self.valuta = valuta
        self.kolicina = kolicina
        self.druga_valuta = druga_valuta if druga_valuta != None else None
    def pretvori_iz_eura(self):
        if self.valuta == "EUR":
            return float(self.kolicina)
        if self.valuta in slovar.keys():
            return "{} EUR je vreden {} {}.".format((self.kolicina), round(float(self.kolicina) * float(slovar[self.valuta]), 4), (self.valuta))
        else:
            return NAPAKA
    def pretvori_v_eur(self):
        if self.valuta == "EUR":
            return float(self.kolicina)
        if self.valuta in slovar.keys():
            return  "{} {} je vreden {} EUR".format((self.kolicina), (self.valuta),round(float(self.kolicina) * 1 / float(slovar[self.valuta]), 4))
        else:
            return NAPAKA
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
        print(self.nalozi_pretvorbe_iz_datoteke())
        shranjenePretvorbe=self.nalozi_pretvorbe_iz_datoteke()
        with open("pretvorbe.json", 'w', encoding='utf-8') as f:
            datum=datetime.datetime.now()
            shranjenePretvorbe.append({"datum":str(datum),"izValute":self.valuta,"vValuto":self.druga_valuta,"vrednost":self.kolicina})
            json.dump(shranjenePretvorbe, f)
        return


valuta1 = Pretvornik("AUD", 1)
print(valuta1.pretvori_iz_eura())
print(valuta1.pretvori_v_eur())

dve_valuti= Pretvornik("AUD", 1 , "EUR")
print(dve_valuti.pretvori_iz_prve_v_drugo())
    



  