% import model_staticni
% import bitcoin
% rebase ('base.tpl', title='Pretvornik')


  <h1>Bitni cekin</h1>

<form action="/bitcoin" method="POST">


<p>
Trenutna vrednost Bitcoina je: <span>{{rezultat_b}}</span> EUR.
%end
</p>

<p id="date"></p>
<script>
document.getElementById("date").innerHTML = Date();
</script>