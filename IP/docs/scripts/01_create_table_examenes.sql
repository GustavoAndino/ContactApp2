CREATE TABLE `examen`.`examenes` (
  `00040_codigo` BIGINT(13) NOT NULL AUTO_INCREMENT,
  `00040_descripcion` VARCHAR(70) NOT NULL,
  `00040_estado` CHAR(3) NOT NULL,
  `00040_fechatarea` DATETIME NOT NULL,
  `00040_correocliente` VARCHAR(128) NOT NULL,
  PRIMARY KEY (`00040_codigo`));
