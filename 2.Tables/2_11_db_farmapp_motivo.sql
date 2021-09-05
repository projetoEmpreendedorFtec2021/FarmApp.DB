-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`motivo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`motivo` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;