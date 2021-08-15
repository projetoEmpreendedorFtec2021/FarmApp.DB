-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`conta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`conta` (
  `idconta` INT NOT NULL,
  `data_criacao` VARCHAR(45) NULL,
  `data_encerramento` VARCHAR(45) NULL,
  `conta_pessoal_idconta_pessoal` INT NOT NULL,
  `conta_farmacia_idconta_farmacia` INT NOT NULL,
  `mensagem_sistema_idmensagem_sistema` INT NOT NULL,
  PRIMARY KEY (`idconta`),
  INDEX `fk_conta_conta_pessoal_idx` (`conta_pessoal_idconta_pessoal` ASC),
  INDEX `fk_conta_conta_farmacia1_idx` (`conta_farmacia_idconta_farmacia` ASC),
  INDEX `fk_conta_mensagem_sistema1_idx` (`mensagem_sistema_idmensagem_sistema` ASC),
  CONSTRAINT `fk_conta_conta_pessoal`
    FOREIGN KEY (`conta_pessoal_idconta_pessoal`)
    REFERENCES `db_farmapp`.`conta_pessoal` (`idconta_pessoal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_conta_conta_farmacia1`
    FOREIGN KEY (`conta_farmacia_idconta_farmacia`)
    REFERENCES `db_farmapp`.`conta_farmacia` (`idconta_farmacia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_conta_mensagem_sistema1`
    FOREIGN KEY (`mensagem_sistema_idmensagem_sistema`)
    REFERENCES `db_farmapp`.`mensagem_sistema` (`idmensagem_sistema`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;