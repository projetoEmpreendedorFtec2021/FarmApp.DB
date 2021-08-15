-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`tipo_endereco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`tipo_endereco` (
  `idtipo_endereco` INT NOT NULL,
  `nome_tipo_endereco` VARCHAR(45) NULL,
  PRIMARY KEY (`idtipo_endereco`))
ENGINE = InnoDB;