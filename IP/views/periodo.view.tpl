<br>
<br>
<h1>{{modesdsc}} {{codigo_periodo}}- {{periodo}}</h1>
<hr />
<form action="index.php?page=periodo&mode={{mode}}&codigo_periodo={{codigo_periodo}}" method="post">
    <input type="hidden" name="codigo_periodo"  value="{{codigo_periodo}}" />
    <input type="hidden" name="mode"  value="{{mode}}" />
    <br>
    <br>
    <label for="codigo_periodo">Codigo</label>
    <input type="text" name="codigo_periodo" id="codigo_periodo" value="{{codigo_periodo}}" {{readonly}} />
    <br />
    <label for="descripcion_periodo">Promocion</label>
    <input type="text" name="descripcion_periodo" id="descripcion_periodo" value="{{descripcion_periodo}}" {{readonly}} />
    <br />

    <label for="periodo">año</label>
    <input type="text" name="periodo" id="periodo" value="{{periodo}}" {{readonly}} />
    <br />

    {{if showbtn}}
      <button type="submit">{{modebtn}}</button>
    {{endif showbtn}}
    <a href="index.php?page=periodos">Aceptar</a>
</form>
