<link rel="stylesheet" href="public/css/formval.css">
<form action="" method="post" id="form_new_customer"
class="card" >
<fieldset >
  <legend>
    <h1>solicitud De Información</h1><br>
    <br>  <h2>Datos Generales</h2>
  </legend>
  <div>
    <label for="txtNombre">Nombre</label>
    <input type="text" placeholder="Nombre Completo"
    name="txtNombre" id="txtNombre" maxlength="60"/>
    <div id="errorMsgNombre" class="error"/>
  </div>
  <div>
    <label for="txtEdad">Edad</label>
    <input type="text" placeholder="Edad"
    name="txtEdad" id="txtEdad" maxlength="2"/>
    <div id="errorMsgEdad" class="error"/>
  </div>
  <div>
    <label for="txtEmail">Correo Electónico</label>
    <input type="text" placeholder="correo@ejemplo.com"
    name="txtEmail" id="txtEmail" maxlength="60"/>
  </div>
  <div>
    <label for="txtTelefono">Teléfono</label>
    <input type="text" placeholder="(+000) 0000-0000"
    name="txtTelefono" id="txtTelefono" maxlength="10"/>
    <div id="errorMsgTelefono" class="error"/>
  </div>
  <div>
    <label for="cmbGenero">Género</label>
    <select id="cmbGenero" name="cmbGenero">
      <option value="F">Femenino</option>
      <option value="M">Masculino</option>
    </select>
  </div>
  <div>
    <label for="cmbModalidad">Modalidad</label>
    <select id="cmbModalidad" name="cmbModalidad">
      <option value="Cíclo Común">Ciclo Común</option>
      <option value="Informática">Informática</option>
      <option value="Electónica">Electónica</option>
      <option value="Estructuras Metálicas">Estructuras Metálicas</option>
      <option value="ISEMED">Isemed</option>
    </select>
  </div>
  <div>
    <label for="txtBlog">Información que desea conocer</label>
    <textarea name="Información" id="txtBlog"></textarea>
  </div>
</fieldset>
<fieldset class="right">
  <button name="btnGuardar" id="btnGuardar">Enviar</button>
</fieldset>
<script src="public/formval.js"></script>
</form>
<section id="section1">
<h2>Contactos De la Institución</h2><br>
<nav>
  <ul>
    <li>DIRECCIÓN: 2769-64-84</li><br>
    <li>CONSEJERÍA: 2769-64-85</li><br>
    <li>ADMINISTRCIÓN: 2769-64-86</li>
  </ul>
</nav>
</section>
