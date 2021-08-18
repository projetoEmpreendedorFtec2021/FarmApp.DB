-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`cep`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`cep` (
  `id` INT NOT NULL,
  `numero_cep` VARCHAR(12) NULL,
  `idendereco` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_cep_endereco1_idx` (`idendereco` ASC),
  CONSTRAINT `fk_cep_endereco1`
    FOREIGN KEY (`idendereco`)
    REFERENCES `db_farmapp`.`endereco` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;