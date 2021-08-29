-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`conta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`conta` (
  `id` INT NOT NULL,
  `data_criacao` VARCHAR(45) NULL,
  `data_encerramento` VARCHAR(45) NULL,
  `idconta_pessoal` INT NOT NULL,
  `idconta_farmacia` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_conta_conta_pessoal_idx` (`idconta_pessoal` ASC),
  INDEX `fk_conta_conta_farmacia1_idx` (`idconta_farmacia` ASC),
  CONSTRAINT `fk_conta_conta_pessoal`
    FOREIGN KEY (`idconta_pessoal`)
    REFERENCES `db_farmapp`.`conta_pessoal` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_conta_conta_farmacia1`
    FOREIGN KEY (`idconta_farmacia`)
    REFERENCES `db_farmapp`.`conta_farmacia` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;