-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`item_cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`item_cliente` (
  `iditem_cliente` INT NOT NULL,
  `cliente_idcliente` INT NOT NULL,
  `produto_marca_idproduto_marca` INT NOT NULL,
  PRIMARY KEY (`iditem_cliente`),
  INDEX `fk_item_cliente_cliente1_idx` (`cliente_idcliente` ASC),
  INDEX `fk_item_cliente_produto_marca1_idx` (`produto_marca_idproduto_marca` ASC),
  CONSTRAINT `fk_item_cliente_cliente1`
    FOREIGN KEY (`cliente_idcliente`)
    REFERENCES `db_farmapp`.`cliente` (`idcliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_item_cliente_produto_marca1`
    FOREIGN KEY (`produto_marca_idproduto_marca`)
    REFERENCES `db_farmapp`.`produto_marca` (`idproduto_marca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;