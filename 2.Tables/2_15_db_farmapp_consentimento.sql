-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`consentimento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`consentimento` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `finalidade` VARCHAR(1000) NULL,
  `situacao` VARCHAR(20) NULL,
  `data` DATETIME NULL,
  `idcliente` INT NOT NULL,
  PRIMARY KEY (`id`)
  INDEX `fk_cliente1_idx` (`idcliente` ASC),
  CONSTRAINT `fk_cliente1`
    FOREIGN KEY (`idcliente`)
    REFERENCES `db_farmapp`.`cliente` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;