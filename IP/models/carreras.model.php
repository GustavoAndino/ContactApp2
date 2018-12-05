<?php
    require_once("libs/dao.php");
  function obtenerCarreras()
{
$sqlstr="SELECT * FROM carrera;";
return obtenerRegistros($sqlstr);
}

function obtenerCarreraPorCodigo($codigo)
{
  $sqlstr="SELECT * FROM carrera where codigo_carrera=%d;";
  return obtenerUnRegistro(sprintf($sqlstr,$codigo));
}

function actualizarCarrera($nombre_carrera,$tipo_carrera,$codigo)
{
$sqlUpd="UPDATE `carrera`set
nombre_carrera='%s',
tipo_carrera='%s'
where codigo_carrera=%d;";
return ejecutarNonQuery(sprintf($sqlUpd,$nombre_carrera,$tipo_carrera,$codigo));
}
function eliminarCarrera($codigo)
{
$sqldel=" DELETE FROM `carrera` where codigo_carrera=%d;";
return ejecutarNonQuery(sprintf($sqldel,$codigo));
}

function agregarCarrera($nombre_carrera,$tipo_carrera)

{
$sqlIns="INSERT INTO `carrera`
(`nombre_carrera`,`tipo_carrera`)
VALUES
('%s','%s')
 ;";
 $sqlIns=sprintf($sqlIns,$nombre_carrera,$tipo_carrera);
 return ejecutarNonQuery($sqlIns);
}

 ?>
