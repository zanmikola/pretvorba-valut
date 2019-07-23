import bottle
import model
import textovni_vmesnik
from bottle import route, request


Pretvornik = model.Pretvornik()

@bottle.get('/')
def index():
    return bottle.template('index.tpl')

@bottle.get('/pretvornik')
def pretvornik():
    return bottle.template('pretvori.tpl',rezultat="",napaka="")

@route('/pretvori',method="POST")
def pretvori_iz_prve_v_drugo():
    vrednost=request.forms.get("vrednost")
    izValute=request.forms.get("valuta1")
    vValuto=request.forms.get("valuta2")
    if vrednost=="":
        return bottle.template("pretvori.tpl",rezultat="",napaka="Vnesi vrednost")

    try:
        vrednost=float(vrednost)
        pretvornik=model.Pretvornik(izValute,vrednost,vValuto)
        rezultat=pretvornik.pretvori_iz_prve_v_drugo()
        pretvornik.zapisi_pretvorbo_v_datoteko()


        rezultat_izpis=textovni_vmesnik.izpis_rezultata(izValute,vValuto,vrednost,rezultat)
        return bottle.template("pretvori.tpl",rezultat=rezultat_izpis,napaka="")

    except ValueError:
        return bottle.template("pretvori.tpl",rezultat="",napaka="Vrednost ni numerična")
















bottle.run(reloader=True, debug=True)