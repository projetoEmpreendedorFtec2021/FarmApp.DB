-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`pesquisa_preco_farmacia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`pesquisa_preco_farmacia` (
  `idpesquisa_preco_farmacia` INT NOT NULL,
  `pesquisa_preco_idpesquisa` INT NOT NULL,
  `item_farmacia_iditem_farmacia` INT NOT NULL,
  PRIMARY KEY (`idpesquisa_preco_farmacia`),
  INDEX `fk_pesquisa_preco_farmacia_pesquisa_preco1_idx` (`pesquisa_preco_idpesquisa` ASC),
  INDEX `fk_pesquisa_preco_farmacia_item_farmacia1_idx` (`item_farmacia_iditem_farmacia` ASC),
  CONSTRAINT `fk_pesquisa_preco_farmacia_pesquisa_preco1`
    FOREIGN KEY (`pesquisa_preco_idpesquisa`)
    REFERENCES `db_farmapp`.`pesquisa_preco` (`idpesquisa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pesquisa_preco_farmacia_item_farmacia1`
    FOREIGN KEY (`item_farmacia_iditem_farmacia`)
    REFERENCES `db_farmapp`.`item_farmacia` (`iditem_farmacia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;