-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`endereco_contapessoal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`endereco_contapessoal` (
  `idendereco_contapessoal` INT NOT NULL,
  `tipo_endereco_idtipo_endereco` INT NOT NULL,
  `cep_idcep` INT NOT NULL,
  `numero` VARCHAR(10) NULL,
  `complemento` VARCHAR(10) NULL,
  `lat_long` VARCHAR(16) NULL,
  PRIMARY KEY (`idendereco_contapessoal`, `tipo_endereco_idtipo_endereco`),
  INDEX `fk_endereco_contapessoal_cep1_idx` (`cep_idcep` ASC),
  INDEX `fk_endereco_contapessoal_tipo_endereco1_idx` (`tipo_endereco_idtipo_endereco` ASC),
  CONSTRAINT `fk_endereco_contapessoal_cep1`
    FOREIGN KEY (`cep_idcep`)
    REFERENCES `db_farmapp`.`cep` (`idcep`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_endereco_contapessoal_tipo_endereco1`
    FOREIGN KEY (`tipo_endereco_idtipo_endereco`)
    REFERENCES `db_farmapp`.`tipo_endereco` (`idtipo_endereco`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;