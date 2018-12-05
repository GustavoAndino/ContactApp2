<br>
<br>
<h1>{{modesdsc}} {{codigo_carrera}}- {{nombre_carrera}}</h1>
<hr />
<form action="index.php?page=carrera&mode={{mode}}&codigo_carrera={{codigo_carrera}}" method="post">
    <input type="hidden" name="codigo_carrera"  value="{{codigo_carrera}}" />
    <input type="hidden" name="mode"  value="{{mode}}" />
    <br>
    <br>
    <label for="codigo_carrera">Codigo</label>
    <input type="text" name="codigo_carrera" id="codigo_carrera" value="{{codigo_carrera}}" {{readonly}} />
    <br />
    <label for="nombre_carrera">Nombre</label>
    <input type="text" name="nombre_carrera" id="nombre_carrera" value="{{nombre_carrera}}" {{readonly}} />
    <br />
    <label for="tipo_carrera">Tipo</label>
    <select name="tipo_carrera" id="tipo_carrera">
       {{foreach estados}}
        <option value="{{tipo_carrera}}" {{selected}}>{{value}}</option>
        {{endfor estados}}
    </select>
    <br />
    {{if showbtn}}
      <button type="submit">{{modebtn}}</button>
    {{endif showbtn}}
    <a href="index.php?page=carreras">Cancelar</a>
</form>
