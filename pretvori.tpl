% import model
% rebase ('base.tpl', title='Pretvornik')


  <h1>Pretvornik valut</h1>

<form action="/pretvori" method="POST">

<input type="number" step="any" name="vrednost"/>
<select name="valuta1">


<option value="EUR">Evro-EUR</option>
<option value="USD">Ameriški dolar-USD</option>
<option value="JPY">Japonski jen-JPY</option>
<option value="BGN">Bolgarski lev-BGN</option>
<option value="CZK">Češka krona-CZK</option>
<option value="DKK">Danska krona-DKK</option>
<option value="GBP">Britanski funt-GBP</option>
<option value="HUF">Madžarski forint-HUF</option>
<option value="PLN">Poljski zlot-PLN</option>
<option value="RON">Romunski lev-RON</option>
<option value="SEK">Švedska krona-SEK</option>
<option value="CHF">Švicarski frank-CHF</option>
<option value="ISK">Islandska krona-ISK</option>
<option value="NOK">Norveška krona-NOK</option>
<option value="HRK">Hrvaška kuna-HRK</option>
<option value="RUB">Ruski rubelj-RUB</option>
<option value="TRY">Turška lira-TRY</option>
<option value="AUD">Avstralski dolar-AUD</option>
<option value="BRL">Brazilski real-BRL</option>
<option value="CAD">Kanadski dolar-CAD</option>
<option value="CNY">Kitajski juan renminbi-CNY</option>
<option value="HKD">Hongkonški dolar-HKD</option>
<option value="IDR">Indonezijska rupija-IDR</option>
<option value="ILS">Novi izraelski šekel-ILS</option>
<option value="INR">Indijska rupija-INR</option>
<option value="KRW">Južnokorejski won-KRW</option>
<option value="MXN">Mehiški peso-MXN</option>
<option value="MYR">Malezijski ringgit-MYR</option>
<option value="NZD">Novozelandski dolar-NZD</option>
<option value="PHP">Filipinski peso-PHP</option>
<option value="SGD">Singapurski dolar-SGD</option>
<option value="THB">Tajski baht-THB</option>
<option value="ZAR">Južnoafriški rand-ZAR</option>
</select> v

<select name="valuta2">
<option value="EUR">Evro-EUR</option>
<option value="USD">Ameriški dolar-USD</option>
<option value="JPY">Japonski jen-JPY</option>
<option value="BGN">Bolgarski lev-BGN</option>
<option value="CZK">Češka krona-CZK</option>
<option value="DKK">Danska krona-DKK</option>
<option value="GBP">Britanski funt-GBP</option>
<option value="HUF">Madžarski forint-HUF</option>
<option value="PLN">Poljski zlot-PLN</option>
<option value="RON">Romunski lev-RON</option>
<option value="SEK">Švedska krona-SEK</option>
<option value="CHF">Švicarski frank-CHF</option>
<option value="ISK">Islandska krona-ISK</option>
<option value="NOK">Norveška krona-NOK</option>
<option value="HRK">Hrvaška kuna-HRK</option>
<option value="RUB">Ruski rubelj-RUB</option>
<option value="TRY">Turška lira-TRY</option>
<option value="AUD">Avstralski dolar-AUD</option>
<option value="BRL">Brazilski real-BRL</option>
<option value="CAD">Kanadski dolar-CAD</option>
<option value="CNY">Kitajski juan renminbi-CNY</option>
<option value="HKD">Hongkonški dolar-HKD</option>
<option value="IDR">Indonezijska rupija-IDR</option>
<option value="ILS">Novi izraelski šekel-ILS</option>
<option value="INR">Indijska rupija-INR</option>
<option value="KRW">Južnokorejski won-KRW</option>
<option value="MXN">Mehiški peso-MXN</option>
<option value="MYR">Malezijski ringgit-MYR</option>
<option value="NZD">Novozelandski dolar-NZD</option>
<option value="PHP">Filipinski peso-PHP</option>
<option value="SGD">Singapurski dolar-SGD</option>
<option value="THB">Tajski baht-THB</option>
<option value="ZAR">Južnoafriški rand-ZAR</option>
</select>


<button type="submit">pretvori</button>
 
</form>


<p>
%if rezultat:
<span>{{rezultat}}</span>
%end
</p>

<p>
%if napaka:
<span>{{napaka}}</span>
%end
</p>

<p id="date"></p>
<script>
document.getElementById("date").innerHTML = Date();
</script>