-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`cidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`cidade` (
  `id` INT NOT NULL,
  `nome_cidade` VARCHAR(100) NULL,
  `iduf` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_cidade_uf1_idx` (`iduf` ASC),
  CONSTRAINT `fk_cidade_uf1`
    FOREIGN KEY (`iduf`)
    REFERENCES `db_farmapp`.`uf` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;