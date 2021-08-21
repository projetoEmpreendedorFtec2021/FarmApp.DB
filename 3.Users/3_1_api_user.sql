-- -----------------------------------------------------
-- Schema db_farmapp
-- -----------------------------------------------------
USE `db_farmapp` ;

-- -----------------------------------------------------
-- User `api_user`
-- -----------------------------------------------------
CREATE USER 'api_user' IDENTIFIED BY 'Ftec@2021';
GRANT ALL PRIVILEGES ON `db_farmapp`.* TO 'api_user';