-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`marca`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`marca` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome_marca` VARCHAR(50) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;