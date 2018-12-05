<?php
    require_once("libs/dao.php");
  function obtenerAlumnos()
{
$sqlstr="SELECT * FROM alumno;";
return obtenerRegistros($sqlstr);
}

function obtenerAlumnoPorCodigo($codigo)
{
  $sqlstr="SELECT * FROM alumno where numero_alumno=%d;";
  return obtenerUnRegistro(sprintf($sqlstr,$codigo));
}

function actualizarAlumno($nombre_alumno,$apellido_alumno,$direccion_alumno,$telefono_alumno,$correo_alumno,$sexo_alumno,$identidad_alumno,$codigo)
{
$sqlUpd="UPDATE `alumno`set
nombre_alumno='%s',
apellido_alumno='%s',
direccion_alumno='%s',
telefono_alumno='%s',
correo_alumno='%s',
sexo_alumno='%s',
identidad_alumno='%s'
where numero_alumno=%d;";
return ejecutarNonQuery(sprintf($sqlUpd,$nombre_alumno,$apellido_alumno,$direccion_alumno,$telefono_alumno,$correo_alumno,$sexo_alumno,$identidad_alumno,$codigo));
}
function eliminarAlumno($codigo)
{
$sqldel=" DELETE FROM `alumno` where numero_alumno=%d;";
return ejecutarNonQuery(sprintf($sqldel,$codigo));
}

function agregarAlumno($nombre_alumno,$apellido_alumno,$direccion_alumno,$telefono_alumno,$correo_alumno,$sexo_alumno,$identidad_alumno)

{
$sqlIns="INSERT INTO `alumno`
(`nombre_alumno`,`apellido_alumno`,`direccion_alumno`,`telefono_alumno`,`correo_alumno`,`sexo_alumno`,`identidad_alumno`)
VALUES
('%s','%s','%s','%s','%s','%s','%s')
 ;";
 $sqlIns=sprintf($sqlIns,$nombre_alumno,$apellido_alumno,$direccion_alumno,$telefono_alumno,$correo_alumno,$sexo_alumno,$identidad_alumno);
 return ejecutarNonQuery($sqlIns);
}

 ?>
