-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`pesquisa_preco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`pesquisa_preco` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `idcliente` INT NOT NULL,
  `iditem_cliente` INT NOT NULL,
  `data_hora` DATETIME NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_pesquisa_cliente1_idx` (`idcliente` ASC),
  INDEX `fk_pesquisa_preco_item_cliente1_idx` (`iditem_cliente` ASC),
  CONSTRAINT `fk_pesquisa_cliente1`
    FOREIGN KEY (`idcliente`)
    REFERENCES `db_farmapp`.`cliente` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pesquisa_preco_item_cliente1`
    FOREIGN KEY (`iditem_cliente`)
    REFERENCES `db_farmapp`.`item_cliente` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;