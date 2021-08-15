-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`apresentacao_produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`apresentacao_produto` (
  `idapresentacao_produto` INT NOT NULL,
  `descricao_apresentação` VARCHAR(30) NULL,
  PRIMARY KEY (`idapresentacao_produto`))
ENGINE = InnoDB;