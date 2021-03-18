-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema battlebots
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema battlebots
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `battlebots` DEFAULT CHARACTER SET utf8 ;
USE `battlebots` ;

-- -----------------------------------------------------
-- Table `battlebots`.`robot`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `battlebots`.`robot` (
  `robot_id` INT(11) NOT NULL AUTO_INCREMENT,
  `robotnaam` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`robot_id`, `robotnaam`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `battlebots`.`eindscore`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `battlebots`.`eindscore` (
  `game_id` INT NOT NULL,
  `robot_id` INT(11) NOT NULL,
  `score` INT(2) NOT NULL,
  PRIMARY KEY (`game_id`, `robot_id`),
  INDEX `fk_robot_id_idx` (`robot_id` ASC),
  CONSTRAINT `fk_robot_id`
    FOREIGN KEY (`robot_id`)
    REFERENCES `battlebots`.`robot` (`robot_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `battlebots`.`spel`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `battlebots`.`spel` (
  `spel_id` INT NOT NULL,
  `spel_naam` VARCHAR(255) NOT NULL,
  `uitleg` TEXT NOT NULL,
  PRIMARY KEY (`spel_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `battlebots`.`speelschema`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `battlebots`.`speelschema` (
  `speelschema_id` INT NOT NULL AUTO_INCREMENT,
  `spel_id` INT NOT NULL,
  `tijd` TIME NOT NULL,
  `robot_1` INT(1) NOT NULL,
  `robot_2` INT(1) NULL,
  INDEX `fk_speelschema_spel1_idx` (`spel_id` ASC),
  PRIMARY KEY (`speelschema_id`, `spel_id`),
  INDEX `fk_speelschema_robot1_idx` (`robot_1` ASC),
  INDEX `fk_speelschema_robot2_idx` (`robot_2` ASC),
  CONSTRAINT `fk_speelschema_spel1`
    FOREIGN KEY (`spel_id`)
    REFERENCES `battlebots`.`spel` (`spel_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_speelschema_robot1`
    FOREIGN KEY (`robot_1`)
    REFERENCES `battlebots`.`robot` (`robot_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_speelschema_robot2`
    FOREIGN KEY (`robot_2`)
    REFERENCES `battlebots`.`robot` (`robot_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `battlebots`.`livedata`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `battlebots`.`livedata` (
  `type` VARCHAR(255) NOT NULL,
  `json` TEXT NOT NULL,
  PRIMARY KEY (`type`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
