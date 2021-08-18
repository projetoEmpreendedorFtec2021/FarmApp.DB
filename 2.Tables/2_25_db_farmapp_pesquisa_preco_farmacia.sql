-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`pesquisa_preco_farmacia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`pesquisa_preco_farmacia` (
  `id` INT NOT NULL,
  `idpesquisa` INT NOT NULL,
  `iditem_farmacia` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_pesquisa_preco_farmacia_pesquisa_preco1_idx` (`idpesquisa` ASC),
  INDEX `fk_pesquisa_preco_farmacia_item_farmacia1_idx` (`iditem_farmacia` ASC),
  CONSTRAINT `fk_pesquisa_preco_farmacia_pesquisa_preco1`
    FOREIGN KEY (`idpesquisa`)
    REFERENCES `db_farmapp`.`pesquisa_preco` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pesquisa_preco_farmacia_item_farmacia1`
    FOREIGN KEY (`iditem_farmacia`)
    REFERENCES `db_farmapp`.`item_farmacia` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;