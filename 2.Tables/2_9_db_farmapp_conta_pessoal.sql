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
  `conta_farmacia` VARCHAR(45) NULL,
  `idendereco_contapessoal` INT NOT NULL,
  `idtipo_endereco` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_conta_pessoal_endereco_contapessoal1_idx` (`idendereco_contapessoal` ASC, `idtipo_endereco` ASC),
  CONSTRAINT `fk_conta_pessoal_endereco_contapessoal1`
    FOREIGN KEY (`idendereco_contapessoal` , `idtipo_endereco`)
    REFERENCES `db_farmapp`.`endereco_contapessoal` (`id` , `idtipo_endereco`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;