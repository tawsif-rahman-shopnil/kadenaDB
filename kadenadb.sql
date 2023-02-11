-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema kadenadb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `kadenadb` ;

-- -----------------------------------------------------
-- Schema kadenadb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `kadenadb` DEFAULT CHARACTER SET utf8 ;
SHOW WARNINGS;
USE `kadenadb` ;

-- -----------------------------------------------------
-- Table `paygrade`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `paygrade` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `paygrade` (
  `gradeID` INT(11) NOT NULL,
  `transactionId` INT NULL DEFAULT NULL,
  `empID` INT(11) NULL DEFAULT NULL,
  `accID` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`gradeID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `salary`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `salary` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `salary` (
  `salID` INT(11) NOT NULL,
  `reimbursmentDate` DATE NULL DEFAULT NULL,
  `empNetSalary` INT(11) NULL DEFAULT NULL,
  `Salarycol` VARCHAR(45) NULL DEFAULT NULL,
  `empID` INT(11) NULL DEFAULT NULL,
  `gradeID` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`salID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `transaction`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `transaction` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `transaction` (
  `transactionID` INT NOT NULL,
  `reimbursmentDate` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`transactionID`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `accounts`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `accounts` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `accounts` (
  `accID` INT NOT NULL,
  `gradeID` INT NULL DEFAULT NULL,
  `salID` INT NULL DEFAULT NULL,
  `transactionID` INT NULL DEFAULT NULL,
  `empID` INT NULL DEFAULT NULL,
  PRIMARY KEY (`accID`),
  CONSTRAINT `gradeID`
    FOREIGN KEY (`gradeID`)
    REFERENCES `paygrade` (`gradeID`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `salID`
    FOREIGN KEY (`salID`)
    REFERENCES `salary` (`salID`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `transactionID`
    FOREIGN KEY (`transactionID`)
    REFERENCES `transaction` (`transactionID`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `fashiondesigndept`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fashiondesigndept` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `fashiondesigndept` (
  `ProductID` INT(11) NOT NULL,
  `designID` INT NULL DEFAULT NULL,
  `execID` INT(11) NOT NULL,
  PRIMARY KEY (`ProductID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `bikeprotgear`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bikeprotgear` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `bikeprotgear` (
  `designId` INT(11) NOT NULL,
  `Pname` VARCHAR(45) NULL DEFAULT NULL,
  `ProductId` VARCHAR(45) NULL DEFAULT NULL,
  `fashiondesigndept_ProductID` INT(11) NOT NULL,
  PRIMARY KEY (`designId`),
  CONSTRAINT `fk_bikeprotgear_fashiondesigndept1`
    FOREIGN KEY (`fashiondesigndept_ProductID`)
    REFERENCES `fashiondesigndept` (`ProductID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `canteen`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `canteen` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `canteen` (
  `empID` INT(11) NOT NULL,
  `Sell` INT(11) NULL DEFAULT NULL,
  `Cost` INT(11) NULL DEFAULT NULL,
  `profit` INT NULL DEFAULT NULL,
  PRIMARY KEY (`empID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `cricketjersey`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cricketjersey` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `cricketjersey` (
  `designId` INT(11) NOT NULL,
  `Pname` VARCHAR(45) NULL DEFAULT NULL,
  `ProductId` VARCHAR(45) NULL DEFAULT NULL,
  `fashiondesigndept_ProductID` INT(11) NOT NULL,
  PRIMARY KEY (`designId`),
  CONSTRAINT `fk_cricketjersey_fashiondesigndept1`
    FOREIGN KEY (`fashiondesigndept_ProductID`)
    REFERENCES `fashiondesigndept` (`ProductID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `crickhelmetcover`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `crickhelmetcover` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `crickhelmetcover` (
  `designId` INT(11) NOT NULL,
  `Pname` VARCHAR(45) NULL DEFAULT NULL,
  `ProductId` VARCHAR(45) NULL DEFAULT NULL,
  `fashiondesigndept_ProductID` INT(11) NOT NULL,
  PRIMARY KEY (`designId`),
  CONSTRAINT `fk_crickhelmetcover_fashiondesigndept1`
    FOREIGN KEY (`fashiondesigndept_ProductID`)
    REFERENCES `fashiondesigndept` (`ProductID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `rawmaterials`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `rawmaterials` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `rawmaterials` (
  `matID` INT NOT NULL,
  `impID` INT NULL DEFAULT NULL,
  `importedprod` VARCHAR(45) NULL DEFAULT NULL,
  `qty` INT NULL DEFAULT NULL,
  PRIMARY KEY (`matID`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `importdept`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `importdept` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `importdept` (
  `impID` INT(11) NOT NULL,
  `OrderDate` DATE NULL DEFAULT NULL,
  `DeliverDate` DATE NULL DEFAULT NULL,
  `matID` INT NULL DEFAULT NULL,
  PRIMARY KEY (`impID`),
  CONSTRAINT `matID`
    FOREIGN KEY (`matID`)
    REFERENCES `rawmaterials` (`matID`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `sell`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sell` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `sell` (
  `sellID` INT NOT NULL,
  `total sell` INT NULL DEFAULT NULL,
  `expID` VARCHAR(45) NULL DEFAULT NULL,
  `qty` INT NULL DEFAULT NULL,
  PRIMARY KEY (`sellID`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `exportdept`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `exportdept` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `exportdept` (
  `expID` INT(11) NOT NULL,
  `OrderDate` DATE NULL DEFAULT NULL,
  `DeliverDate` DATE NULL DEFAULT NULL,
  `sellID` INT NULL DEFAULT NULL,
  PRIMARY KEY (`expID`),
  CONSTRAINT `sellID`
    FOREIGN KEY (`sellID`)
    REFERENCES `sell` (`sellID`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `marketingdept`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `marketingdept` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `marketingdept` (
  `execID` INT(11) NOT NULL,
  `MarketingDEPTcol` VARCHAR(45) NULL DEFAULT NULL,
  `impID` INT(11) NULL DEFAULT NULL,
  `fashiondesigndept_ProductID` INT(11) NOT NULL,
  `importdept_impID` INT(11) NOT NULL,
  `exportdept_expID` INT(11) NOT NULL,
  PRIMARY KEY (`execID`, `fashiondesigndept_ProductID`, `importdept_impID`, `exportdept_expID`),
  CONSTRAINT `fk_marketingdept_fashiondesigndept1`
    FOREIGN KEY (`fashiondesigndept_ProductID`)
    REFERENCES `fashiondesigndept` (`ProductID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_marketingdept_importdept1`
    FOREIGN KEY (`importdept_impID`)
    REFERENCES `importdept` (`impID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_marketingdept_exportdept1`
    FOREIGN KEY (`exportdept_expID`)
    REFERENCES `exportdept` (`expID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `management`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `management` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `management` (
  `empID` INT NOT NULL,
  `accID` VARCHAR(45) NULL,
  `execID` INT NULL,
  `marketingdept_execID` INT(11) NOT NULL,
  PRIMARY KEY (`empID`, `marketingdept_execID`),
  CONSTRAINT `fk_management_marketingdept1`
    FOREIGN KEY (`marketingdept_execID`)
    REFERENCES `marketingdept` (`execID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `hr_dept`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `hr_dept` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `hr_dept` (
  `hrID` INT(11) NOT NULL,
  `empID` INT NULL,
  `management_empID` INT NOT NULL,
  `management_marketingdept_execID` INT(11) NOT NULL,
  PRIMARY KEY (`hrID`, `management_empID`, `management_marketingdept_execID`),
  CONSTRAINT `fk_hr_dept_management1`
    FOREIGN KEY (`management_empID` , `management_marketingdept_execID`)
    REFERENCES `management` (`empID` , `marketingdept_execID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `employee`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `employee` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `employee` (
  `empID` INT(11) NOT NULL,
  `empName` VARCHAR(45) NULL DEFAULT NULL,
  `empAdd` VARCHAR(45) NULL DEFAULT NULL,
  `empDOB` DATE NULL DEFAULT NULL,
  `empCell` INT(11) NULL DEFAULT NULL,
  `hr_dept_hrID` INT(11) NOT NULL,
  `hr_dept_management_empID` INT NOT NULL,
  `hr_dept_management_marketingdept_execID` INT(11) NOT NULL,
  PRIMARY KEY (`empID`, `hr_dept_hrID`, `hr_dept_management_empID`, `hr_dept_management_marketingdept_execID`),
  CONSTRAINT `fk_employee_hr_dept1`
    FOREIGN KEY (`hr_dept_hrID` , `hr_dept_management_empID` , `hr_dept_management_marketingdept_execID`)
    REFERENCES `hr_dept` (`hrID` , `management_empID` , `management_marketingdept_execID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `firedept`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `firedept` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `firedept` (
  `empID` INT(11) NOT NULL,
  `installDate` DATE NULL DEFAULT NULL,
  `replaceDate` DATE NULL DEFAULT NULL,
  `iquipmentID` INT NULL DEFAULT NULL,
  PRIMARY KEY (`empID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `footballjersey`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `footballjersey` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `footballjersey` (
  `designId` INT(11) NOT NULL,
  `Pname` VARCHAR(45) NULL DEFAULT NULL,
  `ProductId` VARCHAR(45) NULL DEFAULT NULL,
  `fashiondesigndept_ProductID` INT(11) NOT NULL,
  PRIMARY KEY (`designId`),
  CONSTRAINT `fk_footballjersey_fashiondesigndept1`
    FOREIGN KEY (`fashiondesigndept_ProductID`)
    REFERENCES `fashiondesigndept` (`ProductID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `gloves`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gloves` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `gloves` (
  `designId` INT(11) NOT NULL,
  `Pname` VARCHAR(45) NULL DEFAULT NULL,
  `ProductId` VARCHAR(45) NULL DEFAULT NULL,
  `fashiondesigndept_ProductID` INT(11) NOT NULL,
  PRIMARY KEY (`designId`),
  CONSTRAINT `fk_gloves_fashiondesigndept1`
    FOREIGN KEY (`fashiondesigndept_ProductID`)
    REFERENCES `fashiondesigndept` (`ProductID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `hockeykits`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `hockeykits` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `hockeykits` (
  `designId` INT(11) NOT NULL,
  `Pname` VARCHAR(45) NULL DEFAULT NULL,
  `ProductId` VARCHAR(45) NULL DEFAULT NULL,
  `fashiondesigndept_ProductID` INT(11) NOT NULL,
  PRIMARY KEY (`designId`),
  CONSTRAINT `fk_hockeykits_fashiondesigndept1`
    FOREIGN KEY (`fashiondesigndept_ProductID`)
    REFERENCES `fashiondesigndept` (`ProductID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `it_dept`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `it_dept` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `it_dept` (
  `empID` INT NOT NULL,
  `user` VARCHAR(6) NULL DEFAULT NULL,
  `pass` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`empID`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `jackets`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jackets` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `jackets` (
  `designId` INT(11) NOT NULL,
  `Pname` VARCHAR(45) NULL DEFAULT NULL,
  `ProductId` VARCHAR(45) NULL DEFAULT NULL,
  `fashiondesigndept_ProductID` INT(11) NOT NULL,
  PRIMARY KEY (`designId`),
  CONSTRAINT `fk_jackets_fashiondesigndept1`
    FOREIGN KEY (`fashiondesigndept_ProductID`)
    REFERENCES `fashiondesigndept` (`ProductID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `medical_dept`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `medical_dept` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `medical_dept` (
  `empID` INT NOT NULL,
  `docname` VARCHAR(6) NULL DEFAULT NULL,
  `contact` INT NULL DEFAULT NULL,
  `medical_deptname` VARCHAR(45) NULL,
  PRIMARY KEY (`empID`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `mosque`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mosque` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `mosque` (
  `empID` INT(11) NOT NULL,
  `joining_date` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`empID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `racinggears`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `racinggears` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `racinggears` (
  `designId` INT(11) NOT NULL,
  `Pname` VARCHAR(45) NULL DEFAULT NULL,
  `ProductId` VARCHAR(45) NULL DEFAULT NULL,
  `fashiondesigndept_ProductID` INT(11) NOT NULL,
  PRIMARY KEY (`designId`),
  CONSTRAINT `fk_racinggears_fashiondesigndept1`
    FOREIGN KEY (`fashiondesigndept_ProductID`)
    REFERENCES `fashiondesigndept` (`ProductID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `sportsprotectiongear`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sportsprotectiongear` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `sportsprotectiongear` (
  `designID` INT(11) NOT NULL,
  `Pname` VARCHAR(45) NULL DEFAULT NULL,
  `ProductId` VARCHAR(45) NULL DEFAULT NULL,
  `fashiondesigndept_ProductID` INT(11) NOT NULL,
  PRIMARY KEY (`designID`),
  CONSTRAINT `fk_sportsprotectiongear_fashiondesigndept1`
    FOREIGN KEY (`fashiondesigndept_ProductID`)
    REFERENCES `fashiondesigndept` (`ProductID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `firedept_has_employee`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `firedept_has_employee` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `firedept_has_employee` (
  `firedept_empID` INT(11) NOT NULL,
  `employee_empID` INT(11) NOT NULL,
  PRIMARY KEY (`firedept_empID`, `employee_empID`),
  CONSTRAINT `fk_firedept_has_employee_firedept1`
    FOREIGN KEY (`firedept_empID`)
    REFERENCES `firedept` (`empID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_firedept_has_employee_employee1`
    FOREIGN KEY (`employee_empID`)
    REFERENCES `employee` (`empID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `canteen_has_employee`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `canteen_has_employee` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `canteen_has_employee` (
  `canteen_empID` INT(11) NOT NULL,
  `employee_empID` INT(11) NOT NULL,
  PRIMARY KEY (`canteen_empID`, `employee_empID`),
  CONSTRAINT `fk_canteen_has_employee_canteen1`
    FOREIGN KEY (`canteen_empID`)
    REFERENCES `canteen` (`empID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_canteen_has_employee_employee1`
    FOREIGN KEY (`employee_empID`)
    REFERENCES `employee` (`empID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `mosque_has_employee`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mosque_has_employee` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `mosque_has_employee` (
  `mosque_empID` INT(11) NOT NULL,
  `employee_empID` INT(11) NOT NULL,
  PRIMARY KEY (`mosque_empID`, `employee_empID`),
  CONSTRAINT `fk_mosque_has_employee_mosque1`
    FOREIGN KEY (`mosque_empID`)
    REFERENCES `mosque` (`empID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_mosque_has_employee_employee1`
    FOREIGN KEY (`employee_empID`)
    REFERENCES `employee` (`empID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `medical_dept_has_employee`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `medical_dept_has_employee` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `medical_dept_has_employee` (
  `medical_dept_empID` INT NOT NULL,
  `employee_empID` INT(11) NOT NULL,
  PRIMARY KEY (`medical_dept_empID`, `employee_empID`),
  CONSTRAINT `fk_medical_dept_has_employee_medical_dept1`
    FOREIGN KEY (`medical_dept_empID`)
    REFERENCES `medical_dept` (`empID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_medical_dept_has_employee_employee1`
    FOREIGN KEY (`employee_empID`)
    REFERENCES `employee` (`empID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `management_has_accounts`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `management_has_accounts` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `management_has_accounts` (
  `management_empID` INT NOT NULL,
  `accounts_accID` INT NOT NULL,
  PRIMARY KEY (`management_empID`, `accounts_accID`),
  CONSTRAINT `fk_management_has_accounts_management1`
    FOREIGN KEY (`management_empID`)
    REFERENCES `management` (`empID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_management_has_accounts_accounts1`
    FOREIGN KEY (`accounts_accID`)
    REFERENCES `accounts` (`accID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `it_dept_has_employee`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `it_dept_has_employee` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `it_dept_has_employee` (
  `it_dept_empID` INT NOT NULL,
  `employee_empID` INT(11) NOT NULL,
  PRIMARY KEY (`it_dept_empID`, `employee_empID`),
  CONSTRAINT `fk_it_dept_has_employee_it_dept1`
    FOREIGN KEY (`it_dept_empID`)
    REFERENCES `it_dept` (`empID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_it_dept_has_employee_employee1`
    FOREIGN KEY (`employee_empID`)
    REFERENCES `employee` (`empID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SHOW WARNINGS;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
