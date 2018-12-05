<br>
<br>
<h1>Listado de Materias</h1>
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
      <a href="index.php?page=materia&mode=INS&codigo_materia=0"> +Nuevo</a>
      &nbsp
      &nbsp
      <a href="index.php?page=menu">-Regresar</a>

    </th>
  </thead>
  <tbody>
    {{foreach materias}}
<tr>
  <td>
    {{codigo_materia}}
  </td>

  <td>
    {{nombre_materia}}
  </td>
  <td>
    <a href="index.php?page=materia&mode=UPD&codigo_materia={{codigo_materia}}">Editar</a>

    <a href="index.php?page=materia&mode=DSP&codigo_materia={{codigo_materia}}">Ver</a>

    <a href="index.php?page=materia&mode=DEL&codigo_materia={{codigo_materia}}">Eliminar</a>
  </td>
</tr>
      {{endfor materias}}
  </tbody>
</table>
