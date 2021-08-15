-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`consentimento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`consentimento` (
  `idconsentimento` INT NOT NULL,
  `finalidade` VARCHAR(100) NULL,
  `situacao` VARCHAR(20) NULL,
  `data` DATETIME NULL,
  PRIMARY KEY (`idconsentimento`))
ENGINE = InnoDB;