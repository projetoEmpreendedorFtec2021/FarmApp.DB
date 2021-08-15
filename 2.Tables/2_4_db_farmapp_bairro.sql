-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`bairro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`bairro` (
  `idbairro` INT NOT NULL,
  `nome_bairro` VARCHAR(45) NULL,
  PRIMARY KEY (`idbairro`))
ENGINE = InnoDB;