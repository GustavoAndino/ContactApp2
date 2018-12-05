<?php
    require_once("libs/dao.php");
  function obtenerMaterias()
{
$sqlstr="SELECT * FROM materia;";
return obtenerRegistros($sqlstr);
}

function obtenerMateriaPorCodigo($codigo)
{
  $sqlstr="SELECT * FROM materia where codigo_materia=%d;";
  return obtenerUnRegistro(sprintf($sqlstr,$codigo));
}

function actualizarMateria($nombre_materia,$codigo)
{
$sqlUpd="UPDATE `materia`set
nombre_materia='%s'
where codigo_materia=%d;";
return ejecutarNonQuery(sprintf($sqlUpd,$nombre_materia,$codigo));
}
function eliminarMateria($codigo)
{
$sqldel=" DELETE FROM `materia` where codigo_materia=%d;";
return ejecutarNonQuery(sprintf($sqldel,$codigo));
}

function agregarMateria($nombre_materia)

{
$sqlIns="INSERT INTO `materia`
(`nombre_materia`)
VALUES
('%s')
 ;";
 $sqlIns=sprintf($sqlIns,$nombre_materia);
 return ejecutarNonQuery($sqlIns);
}

 ?>
