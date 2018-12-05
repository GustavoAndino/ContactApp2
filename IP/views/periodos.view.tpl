<br>
<br>
<h1>Listado de Periodos</h1>
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
      descripcion
    </th>
    <th>
      año
    </th>
    <th>
      <a href="index.php?page=periodo&mode=INS&codigo_periodo=0"> +Nuevo</a>
      &nbsp
      &nbsp
      <a href="index.php?page=menu">-Regresar</a>

    </th>
  </thead>
  <tbody>
    {{foreach periodos}}
<tr>
  <td>
    {{codigo_periodo}}
  </td>

  <td>
    {{descripcion_periodo}}
  </td>

  <td>
    {{periodo}}
  </td>
  <td>
    <a href="index.php?page=periodo&mode=UPD&codigo_periodo={{codigo_periodo}}">Editar</a>

    <a href="index.php?page=periodo&mode=DSP&codigo_periodo={{codigo_periodo}}">Ver</a>

    <a href="index.php?page=periodo&mode=DEL&codigo_periodo={{codigo_periodo}}">Eliminar</a>
  </td>
</tr>
      {{endfor periodos}}
  </tbody>
</table>
