-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`produto_tipo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`produto_tipo` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descricao_tipo_produto` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;