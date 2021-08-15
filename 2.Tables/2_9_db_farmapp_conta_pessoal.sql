-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`conta_pessoal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`conta_pessoal` (
  `idconta_pessoal` INT NOT NULL,
  `tem_farmacia` TINYINT NULL,
  `conta_farmacia` VARCHAR(45) NULL,
  `numero_endereço` VARCHAR(10) NULL,
  `complemento_endereco` VARCHAR(10) NULL,
  `conta_pessoalcol` VARCHAR(45) NULL,
  `endereco_contapessoal_idendereco_contapessoal` INT NOT NULL,
  `endereco_contapessoal_tipo_endereco_idtipo_endereco` INT NOT NULL,
  PRIMARY KEY (`idconta_pessoal`),
  INDEX `fk_conta_pessoal_endereco_contapessoal1_idx` (`endereco_contapessoal_idendereco_contapessoal` ASC, `endereco_contapessoal_tipo_endereco_idtipo_endereco` ASC),
  CONSTRAINT `fk_conta_pessoal_endereco_contapessoal1`
    FOREIGN KEY (`endereco_contapessoal_idendereco_contapessoal` , `endereco_contapessoal_tipo_endereco_idtipo_endereco`)
    REFERENCES `db_farmapp`.`endereco_contapessoal` (`idendereco_contapessoal` , `tipo_endereco_idtipo_endereco`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;