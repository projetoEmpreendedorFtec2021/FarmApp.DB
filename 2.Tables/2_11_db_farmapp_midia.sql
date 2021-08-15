-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`midia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`midia` (
  `idmidia` INT NOT NULL,
  `descricao` VARCHAR(45) NULL,
  PRIMARY KEY (`idmidia`))
ENGINE = InnoDB;