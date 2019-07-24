% import model
% rebase ('base.tpl', title='Pretvornik')


  <h1>Pretvornik valut</h1>

<form action="/pretvori" method="POST">

<input type="number" step="any" name="vrednost"/>
<select name="valuta1">
<option value="EUR">EUR</option>
<option value="AUD">AUD</option>
<option value="USD">USD</option>
<option value="CAD">CAD</option>
<option value="CHF">CHF</option>
<option value="CNY">CNY</option>
</select> v

<select name="valuta2">
<option value="EUR">EUR</option>
<option value="AUD">AUD</option>
<option value="USD">USD</option>
<option value="CAD">CAD</option>
<option value="CHF">CHF</option>
<option value="CNY">CNY</option>

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