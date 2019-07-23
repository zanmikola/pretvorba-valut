% import model
% rebase ('base.tpl', title='Pretvornik')


  <h1>Pretvornik</h1>

<form action="/pretvori" method="POST">

Vrednost: <input type="text" name="vrednost"/>
<select name="valuta1">
<option value="EUR">EUR</option>
<option value="AUD">AUD</option>
<option value="USD">USD</option>
<option value="CAD">CAD</option>
<option value="CHF">CHF</option>
<option value="CNY">CNY</option>
</select>

<select name="valuta2">
<option value="EUR">EUR</option>
<option value="AUD">AUD</option>
<option value="USD">USD</option>
<option value="CAD">CAD</option>
<option value="CHF">CHF</option>
<option value="CNY">CNY</option>

</select>

<button type="submit">Ok</button>
 
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