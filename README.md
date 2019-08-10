#Navodila in pojasnila

1. Za zagon knjižnice request je potrebno v terminal vpisati: pip instal requests.
2. Vrednosti menjalnih tečajev in Bitcoina je bilo potrebno preko jsona prenesti v python.
3. Ker so te vrednosti vezane na spletne strani (npr. spletna stran Evropske centralne banke), ob sesutju teh strani, tudi program ne bo deloval, kar je malo verjetno ampak vseeno možno.
4. V modelu je definirana NAPAKA ( v primeru da valute ne bi bilo v slovarju), ampak je v programu nepotrebna, saj so možnosti za valute že izbrane v tpl-ju.