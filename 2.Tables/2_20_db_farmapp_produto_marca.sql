-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`produto_marca`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`produto_marca` (
  `idproduto_marca` INT NOT NULL,
  `marca_idmarca` INT NOT NULL,
  `codigo_produto_marca` VARCHAR(20) NULL,
  `produto_idproduto` INT NOT NULL,
  `apresentacao_produto_idapresentacao_produto` INT NOT NULL,
  PRIMARY KEY (`idproduto_marca`),
  INDEX `fk_produto_marca_marca1_idx` (`marca_idmarca` ASC),
  INDEX `fk_produto_marca_produto1_idx` (`produto_idproduto` ASC),
  INDEX `fk_produto_marca_apresentacao_produto1_idx` (`apresentacao_produto_idapresentacao_produto` ASC),
  CONSTRAINT `fk_produto_marca_marca1`
    FOREIGN KEY (`marca_idmarca`)
    REFERENCES `db_farmapp`.`marca` (`idmarca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_produto_marca_produto1`
    FOREIGN KEY (`produto_idproduto`)
    REFERENCES `db_farmapp`.`produto` (`idproduto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_produto_marca_apresentacao_produto1`
    FOREIGN KEY (`apresentacao_produto_idapresentacao_produto`)
    REFERENCES `db_farmapp`.`apresentacao_produto` (`idapresentacao_produto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;