
<br>
<br>
<h1>{{modesdsc}} {{codigo_nota}}</h1>
<hr />
<form  action="index.php?page=nota&mode={{mode}}&codigo_nota={{codigo_nota}}" method="post">
    <input type="hidden" name="codigo_nota"  value="{{codigo_nota}}" />
    <input type="hidden" name="mode"  value="{{mode}}" />
    <br>
    <br>
    <label for="codigo_nota">Codigo</label>
    <input type="text" name="codigo_nota" id="codigo_nota" value="{{codigo_nota}}" {{readonly}} />
    <br />
    <label for="primer_parcial">Primer Parcial</label>
    <input type="text" name="primer_parcial" id="primer_parcial" value="{{primer_parcial}}" {{readonly}} />
    <br />
    <label for="segundo_parcial">Segundo Parcial</label>
    <input type="text" name="segundo_parcial" id="segundo_parcial" value="{{segundo_parcial}}" {{readonly}} />
    <br />
    <label for="tercer_parcial">Tercer Parcial</label>
    <input type="text" name="tercer_parcial" id="tercer_parcial" value="{{tercer_parcial}}" {{readonly}} />
    <br />
    <label for="cuarto_parcial">Cuarto Parcial</label>
    <input type="text" name="cuarto_parcial" id="cuarto_parcial" value="{{cuarto_parcial}}" {{readonly}} />
    <br />
    


    {{if showbtn}}
      <button type="submit">{{modebtn}}</button>
    {{endif showbtn}}
    <a href="index.php?page=notas">Cancelar</a>
</form>
