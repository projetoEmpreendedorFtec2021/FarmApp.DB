-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`cidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`cidade` (
  `idcidade` INT NOT NULL,
  `nome_cidade` VARCHAR(100) NULL,
  `uf_iduf` INT NOT NULL,
  PRIMARY KEY (`idcidade`),
  INDEX `fk_cidade_uf1_idx` (`uf_iduf` ASC),
  CONSTRAINT `fk_cidade_uf1`
    FOREIGN KEY (`uf_iduf`)
    REFERENCES `db_farmapp`.`uf` (`iduf`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;