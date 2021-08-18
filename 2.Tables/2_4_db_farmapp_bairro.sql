-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`bairro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`bairro` (
  `id` INT NOT NULL,
  `nome_bairro` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;