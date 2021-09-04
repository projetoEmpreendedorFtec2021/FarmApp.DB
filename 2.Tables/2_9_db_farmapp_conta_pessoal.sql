-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`conta_pessoal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`conta_pessoal` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tem_farmacia` TINYINT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;