<?php
    require_once("libs/dao.php");
  function obtenerDocentes()
{
$sqlstr="SELECT * FROM docente;";
return obtenerRegistros($sqlstr);
}

function obtenerDocentePorCodigo($codigo)
{
  $sqlstr="SELECT * FROM docente where numero_docente=%d;";
  return obtenerUnRegistro(sprintf($sqlstr,$codigo));
}

function actualizarDocente($nombre_docente,$apellido_docente,$direccion_docente,$telefono_docente,$correo_docente,$identidad_docente,$codigo)
{
$sqlUpd="UPDATE `docente`set
nombre_docente='%s',
apellido_docente='%s',
direccion_docente='%s',
telefono_docente='%s',
correo_docente='%s',
identidad_docente='%s'
where numero_docente=%d;";
return ejecutarNonQuery(sprintf($sqlUpd,$nombre_docente,$apellido_docente,$direccion_docente,$telefono_docente,$correo_docente,$identidad_docente,$codigo));
}
function eliminarDocente($codigo)
{
$sqldel=" DELETE FROM `docente` where numero_docente=%d;";
return ejecutarNonQuery(sprintf($sqldel,$codigo));
}

function agregarDocente($nombre_docente,$apellido_docente,$direccion_docente,$telefono_docente,$correo_docente,$identidad_docente)

{
$sqlIns="INSERT INTO `docente`
(`nombre_docente`,`apellido_docente`,`direccion_docente`,`telefono_docente`,`correo_docente`,`identidad_docente`)
VALUES
('%s','%s','%s','%s','%s','%s')
 ;";
 $sqlIns=sprintf($sqlIns,$nombre_docente,$apellido_docente,$direccion_docente,$telefono_docente,$correo_docente,$identidad_docente);
 return ejecutarNonQuery($sqlIns);
}

 ?>
