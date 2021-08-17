-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`cliente_consentimento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`cliente_consentimento` (
  `idcliente` INT NOT NULL,
  `idconsentimento` INT NOT NULL,
  PRIMARY KEY (`idcliente`,`idconsentimento`),
  CONSTRAINT `fk_consentimento1`
    FOREIGN KEY (`idconsentimento`)
    REFERENCES `db_farmapp`.`consentimento` (`idconsentimento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;