-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`endereco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`endereco` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome_endereco` VARCHAR(45) NULL,
  `idcidade` INT NOT NULL,
  `idbairro` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_endereco_cidade1_idx` (`idcidade` ASC),
  INDEX `fk_endereco_bairro1_idx` (`idbairro` ASC),
  CONSTRAINT `fk_endereco_cidade1`
    FOREIGN KEY (`idcidade`)
    REFERENCES `db_farmapp`.`cidade` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_endereco_bairro1`
    FOREIGN KEY (`idbairro`)
    REFERENCES `db_farmapp`.`bairro` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;