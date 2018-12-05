<br>
<br>
<h1>Listado de Docentes</h1>
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
      Identidad
    </th>

    <th>
      <a href="index.php?page=docente&mode=INS&numero_docente=0"> +Nuevo</a>
      &nbsp
      &nbsp
      <a href="index.php?page=menu">-Regresar</a>
    </th>
  </thead>
  <tbody>
    {{foreach docentes}}
<tr>
  <td>
    {{numero_docente}}
  </td>
  <td>
    {{nombre_docente}}
  </td>
  <td>
    {{apellido_docente}}
  </td>
  <td>
    {{direccion_docente}}
  </td>
  <td>
    {{telefono_docente}}
  </td>
  <td>
    {{correo_docente}}
  </td>
  <td>
    {{identidad_docente}}
  </td>
  <td>
    <a href="index.php?page=docente&mode=UPD&numero_docente={{numero_docente}}">Editar</a>

    <a href="index.php?page=docente&mode=DSP&numero_docente={{numero_docente}}">Ver</a>

    <a href="index.php?page=docente&mode=DEL&numero_docente={{numero_docente}}">Eliminar</a>
  </td>
</tr>
      {{endfor docentes}}

  </tbody>
</table>
