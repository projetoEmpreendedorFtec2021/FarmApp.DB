-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`cliente` (
  `id` INT NOT NULL,
  `cpf` VARCHAR(20) NULL,
  `celular` VARCHAR(15) NULL,
  `login` VARCHAR(50) NULL,
  `senha` VARCHAR(50) NOT NULL,
  `nome` VARCHAR(45) NULL,
  `data_nascimento` DATE NULL,
  `idconta` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_cliente_conta1_idx` (`idconta` ASC),
  CONSTRAINT `fk_cliente_conta1`
    FOREIGN KEY (`idconta`)
    REFERENCES `db_farmapp`.`conta` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;