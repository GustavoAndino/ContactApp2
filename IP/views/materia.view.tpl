<br>
<br>
<h1>{{modesdsc}} {{codigo_materia}}- {{nombre_materia}}</h1>
<hr />
<form action="index.php?page=materia&mode={{mode}}&codigo_materia={{codigo_materia}}" method="post">
    <input type="hidden" name="codigo_materia"  value="{{codigo_materia}}" />
    <input type="hidden" name="mode"  value="{{mode}}" />
    <br>
    <br>
    <label for="codigo_materia">Codigo</label>
    <input type="text" name="codigo_materia" id="codigo_materia" value="{{codigo_materia}}" {{readonly}} />
    <br />
    <label for="nombre_materia">Nombre</label>
    <input type="text" name="nombre_materia" id="nombre_materia" value="{{nombre_materia}}" {{readonly}} />
    <br />
    {{if showbtn}}
      <button type="submit">{{modebtn}}</button>
    {{endif showbtn}}
    <a href="index.php?page=materias">Cancelar</a>
</form>
