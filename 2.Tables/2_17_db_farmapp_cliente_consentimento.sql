-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`cliente_consentimento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`cliente_consentimento` (
  `id` INT NOT NULL,
  `idcliente` INT NOT NULL,
  `idconsentimento` INT NOT NULL,
  `data` DATETIME NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_cliente1_idx` (`idcliente` ASC),
  INDEX `fk_consentimento1_idx` (`idconsentimento` ASC),
  CONSTRAINT `fk_consentimento1`
    FOREIGN KEY (`idconsentimento`)
    REFERENCES `db_farmapp`.`consentimento` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cliente1`
    FOREIGN KEY (`idcliente`)
    REFERENCES `db_farmapp`.`cliente` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;