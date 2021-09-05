-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`item_farmacia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`item_farmacia` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `idproduto_marca` INT NOT NULL,
  `idconta_farmacia` INT NOT NULL,
  `codigo_item_farmacia` VARCHAR(20) NULL,
  `preco` DOUBLE NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_item_farmacia_produto_marca1_idx` (`idproduto_marca` ASC),
  INDEX `fk_item_farmacia_conta_farmacia1_idx` (`idconta_farmacia` ASC),
  CONSTRAINT `fk_item_farmacia_produto_marca1`
    FOREIGN KEY (`idproduto_marca`)
    REFERENCES `db_farmapp`.`produto_marca` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_item_farmacia_conta_farmacia1`
    FOREIGN KEY (`idconta_farmacia`)
    REFERENCES `db_farmapp`.`conta_farmacia` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;