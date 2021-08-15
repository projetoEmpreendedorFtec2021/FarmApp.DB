-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`pesquisa_preco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`pesquisa_preco` (
  `idpesquisa` INT NOT NULL,
  `cliente_idcliente` INT NOT NULL,
  `item_cliente_iditem_cliente` INT NOT NULL,
  `data_hora` DATETIME NULL,
  PRIMARY KEY (`idpesquisa`),
  INDEX `fk_pesquisa_cliente1_idx` (`cliente_idcliente` ASC),
  INDEX `fk_pesquisa_preco_item_cliente1_idx` (`item_cliente_iditem_cliente` ASC),
  CONSTRAINT `fk_pesquisa_cliente1`
    FOREIGN KEY (`cliente_idcliente`)
    REFERENCES `db_farmapp`.`cliente` (`idcliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pesquisa_preco_item_cliente1`
    FOREIGN KEY (`item_cliente_iditem_cliente`)
    REFERENCES `db_farmapp`.`item_cliente` (`iditem_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;