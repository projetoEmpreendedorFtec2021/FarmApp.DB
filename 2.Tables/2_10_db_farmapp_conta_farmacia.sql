-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`conta_farmacia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`conta_farmacia` (
  `idconta_farmacia` INT NOT NULL,
  `razao_social` VARCHAR(100) NULL,
  `cnpj` VARCHAR(20) NULL,
  `nome_fantasia` VARCHAR(100) NULL,
  `alvara` VARCHAR(20) NULL,
  `endereco` VARCHAR(200) NULL,
  `site` VARCHAR(200) NULL,
  `email` VARCHAR(50) NULL,
  `telefone` VARCHAR(15) NULL,
  `celular` VARCHAR(15) NULL,
  `cep_idcep` INT NOT NULL,
  `numero_endereçofarmacia` VARCHAR(10) NULL,
  `latilong_farmacia` VARCHAR(16) NULL,
  PRIMARY KEY (`idconta_farmacia`),
  INDEX `fk_conta_farmacia_cep1_idx` (`cep_idcep` ASC),
  CONSTRAINT `fk_conta_farmacia_cep1`
    FOREIGN KEY (`cep_idcep`)
    REFERENCES `db_farmapp`.`cep` (`idcep`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;