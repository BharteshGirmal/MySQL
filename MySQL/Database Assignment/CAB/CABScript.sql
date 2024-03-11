drop table if exists driver_address;
drop table if exists driver_licence;
drop table if exists driver_phone;
drop table if exists onduty;
drop table if exists dutyhistory;

drop table if exists driver;
drop table if exists vehicle;


CREATE TABLE `driver` (
  `ID` INT primary key,
  `namefirst` VARCHAR(45) ,
  `namelast` VARCHAR(45) ,
  `emailID` VARCHAR(45));
  

  
CREATE TABLE `driver_licence` (
  `ID` INT primary key auto_increment,
  `driverID` INT,
  `code` VARCHAR(45),
  `DOI` date,
  `DOE` date,
  FOREIGN KEY(`driverID`) REFERENCES `driver`(`id`));
  
  
  
CREATE TABLE `driver_address` (
  `ID` INT primary key auto_increment,
  `driverID` INT unique not null,
  `address` VARCHAR(128),
  FOREIGN KEY(`driverID`) REFERENCES `driver`(`id`));
  
  
  
CREATE TABLE `driver_phone` (
  `ID` INT primary key auto_increment,
  `driverID` INT,
  `number` VARCHAR(10),
  FOREIGN KEY(`driverID`) REFERENCES `driver`(`id`));
  
  
CREATE TABLE `vehicle` (
  `ID` INT primary key auto_increment,
  `number` VARCHAR(45),
  `model` VARCHAR(45),
  `type` VARCHAR(45),
  `capacity` VARCHAR(45));

  
CREATE TABLE `onduty` (
  `ID` INT primary key auto_increment,
  `driverID` int,
  `date` date,
  `status` varchar(45),
  FOREIGN KEY(`driverID`) REFERENCES `driver`(`id`));
  
 
CREATE TABLE `dutyhistory` (
  `ID` INT primary key auto_increment,
  `driverID` int,
  `date` date,
  `loginon` date,
  `logouton` date,
  FOREIGN KEY(`driverID`) REFERENCES `driver`(`id`));

  

INSERT INTO `driver` (`ID`, `namefirst`, `namelast`, `emailID`) VALUES (1, 'sanjay', 'patil', 'sanjay.patil@gmail.com');
INSERT INTO `driver` (`ID`, `namefirst`, `namelast`, `emailID`) VALUES (2, 'sanju', 'das', 'sanju.das@gmail.com');
INSERT INTO `driver` (`ID`, `namefirst`, `namelast`, `emailID`) VALUES (3, 'ravi', 'kumar', 'ravi.kumar@gmail.com');
INSERT INTO `driver` (`ID`, `namefirst`, `namelast`, `emailID`) VALUES (4, 'raj', 'gandhi', 'raj.gandhi@gmail.com');
INSERT INTO `driver` (`ID`, `namefirst`, `namelast`, `emailID`) VALUES (5, 'raj', 'kumar', 'raj.kumar@gmail.com');


INSERT INTO `vehicle` (`ID`, `number`, `model`, `type`, `capacity`) VALUES (default, 'GJ-06 1745', 'Toyota Etios - J (Petrol)', 'car', '4');
INSERT INTO `vehicle` (`ID`, `number`, `model`, `type`, `capacity`) VALUES (default, 'GJ-06 1746', 'Toyota Etios - GD (diesel)', 'car', '6');
INSERT INTO `vehicle` (`ID`, `number`, `model`, `type`, `capacity`) VALUES (default, 'MH-12 6478', 'TATA - LXI(petrol)', 'mini bus', '10');
INSERT INTO `vehicle` (`ID`, `number`, `model`, `type`, `capacity`) VALUES (default, 'MH-12 6479', 'TATA - J (Petrol)', 'bus', '32');
INSERT INTO `vehicle` (`ID`, `number`, `model`, `type`, `capacity`) VALUES (default, 'MH-12 6480', 'Toyota Etios - GD (diesel)', 'car', '6');



INSERT INTO `driver_licence` (`ID`, `driverID`, `code`, `DOI`, `DOE`) VALUES (default, '1', 'LI10NN2023', '1980-01-01', '2015-11-12');
INSERT INTO `driver_licence` (`ID`, `driverID`, `code`, `DOI`, `DOE`) VALUES (default, '2', 'LK192NP199', '1980-01-02', '2015-11-13');
INSERT INTO `driver_licence` (`ID`, `driverID`, `code`, `DOI`, `DOE`) VALUES (default, '3', 'LM983KC189', '1980-01-03', '2015-11-14');
INSERT INTO `driver_licence` (`ID`, `driverID`, `code`, `DOI`, `DOE`) VALUES (default, '4', 'LK763KHH182', '1980-01-04', '2015-11-15');
INSERT INTO `driver_licence` (`ID`, `driverID`, `code`, `DOI`, `DOE`) VALUES (default, '5', 'LJ101ABC123', '1980-01-05', '2015-11-16');



INSERT INTO `driver_address` (`ID`, `driverID`, `address`) VALUES (default, '1', 'Padu Road, Pune');
INSERT INTO `driver_address` (`ID`, `driverID`, `address`) VALUES (default, '2', 'MG, Road, Pune');
INSERT INTO `driver_address` (`ID`, `driverID`, `address`) VALUES (default, '3', 'Lane 1, Rasta Peth, Pune');
INSERT INTO `driver_address` (`ID`, `driverID`, `address`) VALUES (default, '4', 'Padu Road, Pune');
INSERT INTO `driver_address` (`ID`, `driverID`, `address`) VALUES (default, '5', 'MG, Road, Pune');


INSERT INTO `driver_phone` (`ID`, `driverID`, `number`) VALUES (default, '1', '9897663185');
INSERT INTO `driver_phone` (`ID`, `driverID`, `number`) VALUES (default, '2', '9860812334');
INSERT INTO `driver_phone` (`ID`, `driverID`, `number`) VALUES (default, '3', '8950338110');
INSERT INTO `driver_phone` (`ID`, `driverID`, `number`) VALUES (default, '4', '7870427824');
INSERT INTO `driver_phone` (`ID`, `driverID`, `number`) VALUES (default, '5', '7850339654');


