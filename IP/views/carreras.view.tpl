<br>
<br>
<h1>Listado de Carreras</h1>
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
      Tipo
    </th>
    <th>
      <a href="index.php?page=carrera&mode=INS&codigo_carrera=0"> +Nuevo</a>
      &nbsp
      &nbsp
      <a href="index.php?page=menu">-Regresar</a>

    </th>
  </thead>
  <tbody>
    {{foreach carreras}}
<tr>
  <td>
    {{codigo_carrera}}
  </td>

  <td>
    {{nombre_carrera}}
  </td>

  <td>
    {{tipo_carrera}}
  </td>
  <td>
    <a href="index.php?page=carrera&mode=UPD&codigo_carrera={{codigo_carrera}}">Editar</a>

    <a href="index.php?page=carrera&mode=DSP&codigo_carrera={{codigo_carrera}}">Ver</a>

    <a href="index.php?page=carrera&mode=DEL&codigo_carrera={{codigo_carrera}}">Eliminar</a>
  </td>
</tr>
      {{endfor carreras}}
  </tbody>
</table>
