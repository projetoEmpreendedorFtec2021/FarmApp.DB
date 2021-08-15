-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`produto_tipo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`produto_tipo` (
  `idproduto_tipo` INT NOT NULL,
  `descricao_tipo_produto` VARCHAR(45) NULL,
  PRIMARY KEY (`idproduto_tipo`))
ENGINE = InnoDB;