<br>
<br>
<h1>Listado de Notas</h1>
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
      Primer Parcial
    </th>
    <th>
      Segundo Parcial
    </th>
    <th>
      Tercer Parcial
    </th>
    <th>
      Cuarto Parcial
    </th>
    <th>
      <a href="index.php?page=nota&mode=INS&codigo_nota=0"> +Nuevo</a>
      &nbsp
      &nbsp
      <a href="index.php?page=menu">-Regresar</a>
    </th>
  </thead>
  <tbody>
    {{foreach notas}}
<tr>
  <td>
    {{codigo_nota}}
  </td>

  <td>
    {{primer_parcial}}
  </td>

  <td>
    {{segundo_parcial}}
  </td>
  <td>
    {{tercer_parcial}}
  </td>
  <td>
    {{cuarto_parcial}}
  </td>
  <td>
    <a href="index.php?page=nota&mode=UPD&codigo_nota={{codigo_nota}}">Editar</a>

    <a href="index.php?page=nota&mode=DSP&codigo_nota={{codigo_nota}}">Ver</a>

    <a href="index.php?page=nota&mode=DEL&codigo_nota={{codigo_nota}}">Eliminar</a>
  </td>
</tr>
      {{endfor notas}}
  </tbody>
</table>
