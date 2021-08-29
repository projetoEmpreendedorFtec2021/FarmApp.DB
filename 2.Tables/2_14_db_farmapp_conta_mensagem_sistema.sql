-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`conta_mensagem_sistema`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`conta_mensagem_sistema` (
  `id` INT NOT NULL,
  `idconta` INT NOT NULL,
  `idmensagem_sistema` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_conta1_idx` (`idconta` ASC),
  INDEX `fk_mensagem_sistema1_idx` (`idmensagem_sistema` ASC),
  CONSTRAINT `fk_mensagem_sistema1`
    FOREIGN KEY (`idmensagem_sistema`)
    REFERENCES `db_farmapp`.`mensagem_sistema` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_conta1`
    FOREIGN KEY (`idconta`)
    REFERENCES `db_farmapp`.`conta` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;