<?php
   //data access object
   require_once("libs/parameters.php");

   // ------------------------


   $conexion = new mysqli($server, $user, $pswd ,$database, $port);

   if($conexion->connect_errno){
        //die();
        die($conexion->connect_error);
   }

   function obtenerRegistros($sqlstr, &$conexion = null){
        if(!$conexion) global $conexion;
        $result = $conexion->query($sqlstr);
        $resultArray = array();
        foreach($result as $registro){
            $resultArray[] = $registro;
        }
        return $resultArray;
   }
   function obtenerRegistrosD($sqlstr, &$conexion = null){
        if(!$conexion) global $conexion;
        $result = $conexion->query($sqlstr);
        $resultArray = array();
        foreach($result as $registro){
            $resultArray[] = $registro;
        }
        return $resultArray;
   }

   function obtenerUnRegistro($sqlstr, &$conexion = null){
        if(!$conexion) global $conexion;
        $result = $conexion->query($sqlstr);
        $resultArray = array();

        $resultArray = $result->fetch_assoc();

        return $resultArray;
   }


   function ejecutarNonQuery($sqlstr, &$conexion = null){
        if(!$conexion) global $conexion;
        $result = $conexion->query($sqlstr);
        if($conexion->errno){
          error_log($conexion->error);
        }
        if ( $result ) {
          return $conexion->affected_rows;
        } else{
          return -1;
        }
   }

   function valstr($str, &$conexion = null){
      if(!$conexion) global $conexion;
      return $conexion->escape_string($str);
   }

   function getLastInserId(&$conexion = null){
     if(!$conexion) global $conexion;
     return $conexion->insert_id;
   }

   function ejecutarNoQuery(&$conexion, $sqlstr){
       if($conexion){
           //Cuando son updates o Inserts devuelve false si falla el query.
           return $conexion->query($sqlstr);
       }
       return false;
   }


          function obtenerRegistro(&$conexion, $sqlstr){
              $resultado = array();
              if($conexion){
                  $cursor = $conexion->query($sqlstr);
                  if($cursor){
                      foreach($cursor as $registro){
                          $resultado = $registro;
                          break;
                      }
                  }
              }
              return $resultado;
          }


?>
