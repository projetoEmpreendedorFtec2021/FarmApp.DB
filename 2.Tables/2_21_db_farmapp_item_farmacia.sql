-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`item_farmacia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`item_farmacia` (
  `iditem_farmacia` INT NOT NULL,
  `produto_marca_idproduto_marca` INT NOT NULL,
  `conta_farmacia_idconta_farmacia` INT NOT NULL,
  `codigo_item_farmacia` VARCHAR(20) NULL,
  `preco` DOUBLE NULL,
  PRIMARY KEY (`iditem_farmacia`),
  INDEX `fk_item_farmacia_produto_marca1_idx` (`produto_marca_idproduto_marca` ASC),
  INDEX `fk_item_farmacia_conta_farmacia1_idx` (`conta_farmacia_idconta_farmacia` ASC),
  CONSTRAINT `fk_item_farmacia_produto_marca1`
    FOREIGN KEY (`produto_marca_idproduto_marca`)
    REFERENCES `db_farmapp`.`produto_marca` (`idproduto_marca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_item_farmacia_conta_farmacia1`
    FOREIGN KEY (`conta_farmacia_idconta_farmacia`)
    REFERENCES `db_farmapp`.`conta_farmacia` (`idconta_farmacia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;