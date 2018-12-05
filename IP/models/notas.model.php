<?php
    require_once("libs/dao.php");
  function obtenerNotas()
{
$sqlstr="SELECT * FROM notas;";
return obtenerRegistros($sqlstr);
}

function obtenerNotasPorCodigo($codigo)
{
  $sqlstr="SELECT * FROM notas where codigo_nota=%d;";
  return obtenerUnRegistro(sprintf($sqlstr,$codigo));
}

function actualizarNota($primer_parcial,$segundo_parcial,$tercer_parcial,$cuarto_parcial,$codigo)
{
$sqlUpd="UPDATE `notas`set
primer_parcial='%s',
segundo_parcial='%s',
tercer_parcial='%s',
cuarto_parcial='%s'
where codigo_nota=%d;";
return ejecutarNonQuery(sprintf($sqlUpd,$primer_parcial,$segundo_parcial,$tercer_parcial,$cuarto_parcial,$codigo));
}
function eliminarNota($codigo)
{
$sqldel=" DELETE FROM `notas` where codigo_nota=%d;";
return ejecutarNonQuery(sprintf($sqldel,$codigo));
}

function agregarNota($primer_parcial,$segundo_parcial,$tercer_parcial,$cuarto_parcial)

{
$sqlIns="INSERT INTO `notas`
(`primer_parcial`,`segundo_parcial`,`tercer_parcial`,`cuarto_parcial`)
VALUES
('%s','%s','%s','%s')
 ;";
 $sqlIns=sprintf($sqlIns,$primer_parcial,$segundo_parcial,$tercer_parcial,$cuarto_parcial);
 return ejecutarNonQuery($sqlIns);
}

 ?>
