-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`consentimento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`consentimento` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `finalidade` VARCHAR(1000) NULL,
  `situacao` VARCHAR(20) NULL,
  `data` DATETIME NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;