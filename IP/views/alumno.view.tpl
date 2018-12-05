<br>
<br>
<h1>{{modesdsc}} {{numero_alumno}}- {{nombre_alumno}}</h1>
<hr />
<form action="index.php?page=alumno&mode={{mode}}&numero_alumno={{numero_alumno}}" method="post">
    <input type="hidden" name="numero_alumno"  value="{{numero_alumno}}" />
    <input type="hidden" name="mode"  value="{{mode}}" />
    <br>
    <br>
    <label for="numero_alumno">Codigo</label>
    <input type="text" name="numero_alumno" id="numero_alumno" value="{{numero_alumno}}" {{readonly}} />
    <br />
    <label for="nombre_alumno">Nombre</label>
    <input type="text" name="nombre_alumno" id="nombre_alumno" value="{{nombre_alumno}}" {{readonly}} />
    <br />
    <label for="direccion_alumno">Direccion</label>
    <input type="text" name="direccion_alumno" id="direccion_alumno" value="{{direccion_alumno}}" {{readonly}} />
    <br />
    <label for="telefono_alumno">Telefono</label>
    <input type="text" name="telefono_alumno" id="telefono_alumno" value="{{telefono_alumno}}" {{readonly}} />
    <br />
    <label for="correo_alumno">Correo</label>
    <input type="text" name="correo_alumno" id="correo_alumno" value="{{correo_alumno}}" {{readonly}} />
    <br />
    <label for="sexo_alumno">Sexo</label>
    <select name="sexo_alumno" id="sexo_alumno">
       {{foreach estados}}
        <option value="{{sexo_alumno}}" {{selected}}>{{value}}</option>
        {{endfor estados}}
    </select>
    <br />
    <label for="identidad_alumno">Identidad</label>
    <input type="text" name="identidad_alumno" id="identidad_alumno" value="{{identidad_alumno}}" {{readonly}} />
    <br />

    {{if showbtn}}
      <button type="submit">{{modebtn}}</button>
    {{endif showbtn}}
    <a href="index.php?page=alumnos">Cancelar</a>
</form>
