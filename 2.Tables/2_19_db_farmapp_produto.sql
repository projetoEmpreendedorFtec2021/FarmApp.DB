-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`produto` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `idproduto_tipo` INT NOT NULL,
  `descricao_produto` VARCHAR(255);
  PRIMARY KEY (`id`),
  INDEX `fk_produto_produto_tipo1_idx` (`idproduto_tipo` ASC),
  CONSTRAINT `fk_produto_produto_tipo1`
    FOREIGN KEY (`idproduto_tipo`)
    REFERENCES `db_farmapp`.`produto_tipo` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;