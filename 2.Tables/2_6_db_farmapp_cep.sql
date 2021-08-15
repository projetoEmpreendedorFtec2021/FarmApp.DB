-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`cep`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`cep` (
  `idcep` INT NOT NULL,
  `numero_cep` VARCHAR(12) NULL,
  `endereco_idendereco` INT NOT NULL,
  PRIMARY KEY (`idcep`),
  INDEX `fk_cep_endereco1_idx` (`endereco_idendereco` ASC),
  CONSTRAINT `fk_cep_endereco1`
    FOREIGN KEY (`endereco_idendereco`)
    REFERENCES `db_farmapp`.`endereco` (`idendereco`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;