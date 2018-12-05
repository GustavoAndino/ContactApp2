<br>
<br>
<h1>Listado de Alumnos</h1>
<style>
table{
  width:100%;
}
tr:nth-child(2n){
  background-color: #ddd;
}

</style>
<table>
  <thead>
    <th>
      Codigo
    </th>
    <th>
      Nombre
    </th>
    <th>
      Apellido
    </th>
    <th>
      Direccion
    </th>
    <th>
      Telefono
    </th>
    <th>
      Correo
    </th>
    <th>
      Sexo
    </th>
    <th>
      Identidad
    </th>
  
    <th>
      <a href="index.php?page=alumno&mode=INS&numero_alumno=0"> +Nuevo</a>
    </th>
  </thead>
  <tbody>
    {{foreach alumnos}}
<tr>
  <td>
    {{numero_alumno}}
  </td>
  <td>
    {{nombre_alumno}}
  </td>
  <td>
    {{direccion_alumno}}
  </td>
  <td>
    {{telefono_alumno}}
  </td>
  <td>
    {{correo_alumno}}
  </td>
  <td>
    {{sexo_alumno}}
  </td>
  <td>
    {{identidad_alumno}}
  </td>

  <td>
    <a href="index.php?page=alumno&mode=UPD&numero_alumno={{numero_alumno}}">Editar</a>

    <a href="index.php?page=alumno&mode=DSP&numero_alumno={{numero_alumno}}">Ver</a>

    <a href="index.php?page=alumno&mode=DEL&numero_alumno={{numero_alumno}}">Eliminar</a>
  </td>
</tr>
      {{endfor alumnos}}
  </tbody>
</table>
