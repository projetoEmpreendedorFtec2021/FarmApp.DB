-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`item_cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`item_cliente` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `idcliente` INT NOT NULL,
  `idproduto_marca` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_item_cliente_cliente1_idx` (`idcliente` ASC),
  INDEX `fk_item_cliente_produto_marca1_idx` (`idproduto_marca` ASC),
  CONSTRAINT `fk_item_cliente_cliente1`
    FOREIGN KEY (`idcliente`)
    REFERENCES `db_farmapp`.`cliente` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_item_cliente_produto_marca1`
    FOREIGN KEY (`idproduto_marca`)
    REFERENCES `db_farmapp`.`produto_marca` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;