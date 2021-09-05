-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`conta_farmacia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`conta_farmacia` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `razao_social` VARCHAR(100) NULL,
  `cnpj` VARCHAR(20) NULL,
  `nome_fantasia` VARCHAR(100) NULL,
  `alvara` VARCHAR(20) NULL,
  `endereco` VARCHAR(200) NULL,
  `site` VARCHAR(200) NULL,
  `email` VARCHAR(50) NULL,
  `telefone` VARCHAR(15) NULL,
  `celular` VARCHAR(15) NULL,
  `idcep` INT NOT NULL,
  `numero_endereçofarmacia` VARCHAR(10) NULL,
  `latilong_farmacia` VARCHAR(16) NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_conta_farmacia_cep1_idx` (`idcep` ASC),
  CONSTRAINT `fk_conta_farmacia_cep1`
    FOREIGN KEY (`idcep`)
    REFERENCES `db_farmapp`.`cep` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;