-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`marca`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`marca` (
  `idmarca` INT NOT NULL,
  `nome_marca` VARCHAR(50) NULL,
  PRIMARY KEY (`idmarca`))
ENGINE = InnoDB;