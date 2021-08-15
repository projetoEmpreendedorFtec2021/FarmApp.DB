-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`produto` (
  `idproduto` INT NOT NULL,
  `produto_tipo_idproduto_tipo` INT NOT NULL,
  PRIMARY KEY (`idproduto`),
  INDEX `fk_produto_produto_tipo1_idx` (`produto_tipo_idproduto_tipo` ASC),
  CONSTRAINT `fk_produto_produto_tipo1`
    FOREIGN KEY (`produto_tipo_idproduto_tipo`)
    REFERENCES `db_farmapp`.`produto_tipo` (`idproduto_tipo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;