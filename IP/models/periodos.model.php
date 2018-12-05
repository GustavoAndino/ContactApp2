<?php
    require_once("libs/dao.php");
  function obtenerPeriodos()
{
$sqlstr="SELECT * FROM periodo;";
return obtenerRegistros($sqlstr);
}

function obtenerPeriodoPorCodigo($codigo)
{
  $sqlstr="SELECT * FROM periodo where codigo_periodo=%d;";
  return obtenerUnRegistro(sprintf($sqlstr,$codigo));
}

function actualizarPeriodo($descripcion_periodo,$periodo,$codigo)
{
$sqlUpd="UPDATE `periodo`set
descripcion_periodo='%s',
periodo='%d'
where codigo_periodo=%d;";
return ejecutarNonQuery(sprintf($sqlUpd,$descripcion_periodo,$periodo,$codigo));
}
function eliminarPeriodo($codigo)
{
$sqldel=" DELETE FROM `periodo` where codigo_periodo=%d;";
return ejecutarNonQuery(sprintf($sqldel,$codigo));
}

function agregarPeriodo($descripcion_periodo,$periodo)

{
$sqlIns="INSERT INTO `periodo`
(`descripcion_periodo`,`periodo`)
VALUES
('%s','%d')
 ;";
 $sqlIns=sprintf($sqlIns,$descripcion_periodo,$periodo);
 return ejecutarNonQuery($sqlIns);
}

 ?>
