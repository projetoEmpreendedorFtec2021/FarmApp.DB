-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`mensagem_sistema`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`mensagem_sistema` (
  `idmensagem_sistema` INT NOT NULL,
  `motivo` VARCHAR(100) NULL,
  `mensagdescricao` VARCHAR(255) NULL,
  `datahora` DATETIME NULL,
  `midia_idmidia` INT NOT NULL,
  PRIMARY KEY (`idmensagem_sistema`),
  INDEX `fk_mensagem_sistema_midia1_idx` (`midia_idmidia` ASC),
  CONSTRAINT `fk_mensagem_sistema_midia1`
    FOREIGN KEY (`midia_idmidia`)
    REFERENCES `db_farmapp`.`midia` (`idmidia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;