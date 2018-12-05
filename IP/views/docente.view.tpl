<br>
<br>
<h1>{{modesdsc}} {{numero_docente}}- {{nombre_docente}}</h1>
<hr />
<form action="index.php?page=docente&mode={{mode}}&numero_docente={{numero_docente}}" method="post">
    <input type="hidden" name="numero_docente"  value="{{numero_docente}}" />
    <input type="hidden" name="mode"  value="{{mode}}" />
    <br>
    <br>
    <label for="numero_docente">Codigo</label>
    <input type="text" name="numero_docente" id="numero_docente" value="{{numero_docente}}" {{readonly}} />
    <br />
    <label for="nombre_docente">Nombre</label>
    <input type="text" name="nombre_docente" id="nombre_docente" value="{{nombre_docente}}" {{readonly}} />
    <br />
    <label for="apellido_docente">Apellido</label>
    <input type="text" name="apellido_docente" id="apellido_docente" value="{{apellido_docente}}" {{readonly}} />
    <br />
    <label for="direccion_docente">Direccion</label>
    <input type="text" name="direccion_docente" id="direccion_docente" value="{{direccion_docente}}" {{readonly}} />
    <br />
    <label for="telefono_docente">Telefono</label>
    <input type="text" name="telefono_docente" id="telefono_docente" value="{{telefono_docente}}" {{readonly}} />
    <br />
    <label for="correo_docente">Correo</label>
    <input type="text" name="correo_docente" id="correo_docente" value="{{correo_docente}}" {{readonly}} />
    <br />
    <label for="identidad_docente">Identidad</label>
    <input type="text" name="identidad_docente" id="identidad_docente" value="{{identidad_docente}}" {{readonly}} />
    <br />

    {{if showbtn}}
      <button type="submit">{{modebtn}}</button>
    {{endif showbtn}}
    <a href="index.php?page=docentes">Cancelar</a>
</form>
