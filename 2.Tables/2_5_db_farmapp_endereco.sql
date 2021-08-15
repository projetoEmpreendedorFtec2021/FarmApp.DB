-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`endereco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`endereco` (
  `idendereco` INT NOT NULL,
  `nome_endereco` VARCHAR(45) NULL,
  `cidade_idcidade` INT NOT NULL,
  `bairro_idbairro` INT NOT NULL,
  PRIMARY KEY (`idendereco`),
  INDEX `fk_endereco_cidade1_idx` (`cidade_idcidade` ASC),
  INDEX `fk_endereco_bairro1_idx` (`bairro_idbairro` ASC),
  CONSTRAINT `fk_endereco_cidade1`
    FOREIGN KEY (`cidade_idcidade`)
    REFERENCES `db_farmapp`.`cidade` (`idcidade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_endereco_bairro1`
    FOREIGN KEY (`bairro_idbairro`)
    REFERENCES `db_farmapp`.`bairro` (`idbairro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;