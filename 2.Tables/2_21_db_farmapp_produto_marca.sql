-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- Table `db_farmapp`.`produto_marca`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmapp`.`produto_marca` (
  `id` INT NOT NULL,
  `idmarca` INT NOT NULL,
  `codigo_produto_marca` VARCHAR(20) NULL,
  `idproduto` INT NOT NULL,
  `idapresentacao_produto` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_produto_marca_marca1_idx` (`idmarca` ASC),
  INDEX `fk_produto_marca_produto1_idx` (`idproduto` ASC),
  INDEX `fk_produto_marca_apresentacao_produto1_idx` (`idapresentacao_produto` ASC),
  CONSTRAINT `fk_produto_marca_marca1`
    FOREIGN KEY (`idmarca`)
    REFERENCES `db_farmapp`.`marca` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_produto_marca_produto1`
    FOREIGN KEY (`idproduto`)
    REFERENCES `db_farmapp`.`produto` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_produto_marca_apresentacao_produto1`
    FOREIGN KEY (`idapresentacao_produto`)
    REFERENCES `db_farmapp`.`apresentacao_produto` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;