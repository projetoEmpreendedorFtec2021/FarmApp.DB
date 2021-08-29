-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`mensagem_sistema`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`mensagem_sistema` (
  `id` INT NOT NULL,
  `idmotivo` INT NULL,
  `mensagdescricao` VARCHAR(255) NULL,
  `datahora` DATETIME NULL,
  `idmidia` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_mensagem_sistema_midia1_idx` (`idmidia` ASC),
  INDEX `fk_mensagem_sistema_motivo1_idx` (`idmotivo` ASC),
  CONSTRAINT `fk_mensagem_sistema_midia1`
    FOREIGN KEY (`idmidia`)
    REFERENCES `db_farmapp`.`midia` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_mensagem_sistema_motivo1`
    FOREIGN KEY (`idmotivo`)
    REFERENCES `db_farmapp`.`motivo` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;