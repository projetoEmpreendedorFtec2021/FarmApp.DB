-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`apresentacao_produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`apresentacao_produto` (
  `id` INT NOT NULL,
  `descricao_apresentação` VARCHAR(30) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;