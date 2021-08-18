-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`uf`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`uf` (
  `id` INT NOT NULL,
  `nome_uf` VARCHAR(25) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;