<h1>{{modesdsc}}Examen</h1>
<hr />
<form action="index.php?page=examen&mode={{mode}}&00040_codigo={{00040_codigo}}" method="post">
    <input type="hidden" name="00040_codigo"  value="{{00040_codigo}}" />
    <input type="hidden" name="mode"  value="{{mode}}" />

    <label for="00040_codigo">Código</label>
    <input type="text" name="00040_codigo" id="00040_codigo" value="{{00040_codigo}}" readonly />
    <br />
    <label for="00040_descripcion">Descripcion</label>
    <input type="text" name="00040_descripcion" id="00040_descripcion" value="{{00040_descripcion}}" {{readonly}} />
    <br />
    <label for="00040_estado">Estado</label>
    <select name="00040_estado" id="00040_estado">
       {{foreach estados}}
        <option value="{{cod}}" {{selected}}>{{value}}</option>
        {{endfor estados}}
    </select>
    <br />
    <label for="00040_fechatarea">Fecha</label>
    <input type="text" name="00040_fechatarea" id="00040_fechatarea" value="{{00040_fechatarea}}" {{readonly}} />
    <br />
    <label for="00040_correocliente">Correo</label>
    <input type="text" name="00040_correocliente" id="00040_correocliente" value="{{00040_correocliente}}" {{readonly}} />
    <br />
    {{if showbtn}}
      <button type="submit">{{modebtn}}</button>
    {{endif showbtn}}
    <a href="index.php?page=examenes">Cancelar</a>
</form>
