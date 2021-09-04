-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`endereco_contapessoal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`endereco_contapessoal` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `idtipo_endereco` INT NOT NULL,
  `idcep` INT NOT NULL,
  `numero` VARCHAR(10) NULL,
  `complemento` VARCHAR(10) NULL,
  `lat_long` VARCHAR(16) NULL,
  `idconta_pessoal` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_endereco_contapessoal_cep1_idx` (`idcep` ASC),
  INDEX `fk_endereco_contapessoal_tipo_endereco1_idx` (`idtipo_endereco` ASC),
  INDEX `fk_conta_conta_pessoal_idx` (`idconta_pessoal` ASC),
  CONSTRAINT `fk_endereco_contapessoal_cep1`
    FOREIGN KEY (`idcep`)
    REFERENCES `db_farmapp`.`cep` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_endereco_contapessoal_tipo_endereco1`
    FOREIGN KEY (`idtipo_endereco`)
    REFERENCES `db_farmapp`.`tipo_endereco` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_endereco_contapessoal_conta_pessoal`
    FOREIGN KEY (`idconta_pessoal`)
    REFERENCES `db_farmapp`.`conta_pessoal` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;