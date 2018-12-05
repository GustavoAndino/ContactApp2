<?php
    require_once("libs/dao.php");
  function obtenerExamenes()
{
$sqlstr="SELECT * FROM examenes;";
return obtenerRegistros($sqlstr);
}

function obtenerExamenPorCodigo($codigo)
{
  $sqlstr="SELECT * FROM examenes where 00040_codigo=%d;";
  return obtenerUnRegistro(sprintf($sqlstr,$codigo));
}

function actualizarExamen(
  $_00040_descripcion,$_00040_estado,$_00040_fechatarea,$_00040_correocliente,$_00040_codigo)
{
$sqlUpd="update examenes set
00040_descripcion='%s',
00040_estado='%s',
00040_fechatarea='%s',
00040_correocliente= '%s'
where 00040_codigo=%d;";
return ejecutarNonQuery(sprintf(
    $sqlUpd,$_00040_descripcion,$_00040_estado,$_00040_fechatarea,$_00040_correocliente,$_00040_codigo));
}
function eliminarExamen($_00040_codigo)
{
$sqldel=" delete from examenes where 00040_codigo=%d;";
return ejecutarNonQuery(sprintf($sqldel,$_00040_codigo));
}

function agregarExamen($_00040_descripcion,$_00040_estado,$_00040_fecha,$_00040_correocliente)

{
$sqlIns="INSERT INTO `examen`.`examenes`
(`00040_descripcion`,`00040_estado`,`00040_fechatarea`,`00040_correocliente`)
VALUES
('%s','%s','%s','%s')
 ";
 $sqlIns=sprintf($sqlIns,$_00040_descripcion,$_00040_estado,$_00040_fecha,$_00040_correocliente);
 return ejecutarNonQuery($sqlIns);
}

 ?>
