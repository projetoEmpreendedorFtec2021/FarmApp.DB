-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`cliente` (
  `idcliente` INT NOT NULL,
  `cpf` VARCHAR(20) NULL,
  `celular` VARCHAR(15) NULL,
  `login` VARCHAR(50) NULL,
  `clientecol` VARCHAR(45) NULL,
  `conta_idconta` INT NOT NULL,
  `consentimento_idconsentimento` INT NOT NULL,
  PRIMARY KEY (`idcliente`),
  INDEX `fk_cliente_conta1_idx` (`conta_idconta` ASC),
  INDEX `fk_cliente_consentimento1_idx` (`consentimento_idconsentimento` ASC),
  CONSTRAINT `fk_cliente_conta1`
    FOREIGN KEY (`conta_idconta`)
    REFERENCES `db_farmapp`.`conta` (`idconta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cliente_consentimento1`
    FOREIGN KEY (`consentimento_idconsentimento`)
    REFERENCES `db_farmapp`.`consentimento` (`idconsentimento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;