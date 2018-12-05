<h1>Listado de Examenes</h1>
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
      Descripcion
    </th>
    <th>
      Estado
    </th>
    <th>
      Fecha
    </th>
    <th>
      Correo
    </th>
    <th>
      <a href="index.php?page=examen&mode=INS&00040_codigo=0"> +Nuevo</a>

    </th>
  </thead>
  <tbody>
    {{foreach examenes}}
<tr>
  <td>
    {{00040_codigo}}
  </td>

  <td>
    {{00040_descripcion}}
  </td>

  <td>
    {{00040_estado}}
  </td>

  <td>
    {{00040_fecha}}
  </td>

  <td>
    {{00040_correocliente}}
  </td>
  <td>
    <a href="index.php?page=examen&mode=UPD&00040_codigo={{00040_codigo}}">Editar</a>

    <a href="index.php?page=examen&mode=DSP&00040_codigo={{00040_codigo}}">Ver</a>

    <a href="index.php?page=examen&mode=DEL&00040_codigo={{00040_codigo}}">Eliminar</a>
  </td>
</tr>
      {{endfor examenes}}
  </tbody>
</table>
