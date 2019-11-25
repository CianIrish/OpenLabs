use mgp;

DROP TABLE IF EXISTS users;
CREATE TABLE `users` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`username` VARCHAR(50) NULL DEFAULT NULL,
	`email` VARCHAR(50) NULL DEFAULT '0',
	`password` VARCHAR(50) NULL DEFAULT '0',
	`acctype` VARCHAR(50) NULL DEFAULT '0',
	`address` VARCHAR(50) NULL DEFAULT '0',
	PRIMARY KEY (`id`)
)
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB
AUTO_INCREMENT=2
;

select * from users;

DROP TABLE IF EXISTS `timetable`;
CREATE TABLE `timetable` (
	`ID` INT(10) NOT NULL AUTO_INCREMENT,
	`roomID` VARCHAR(10) NOT NULL,
    `day` VARCHAR (10) NULL DEFAULT '0',
    `time` VARCHAR(50) NULL DEFAULT '0',
    `isFree` boolean,
    PRIMARY KEY (`id`)
)
AUTO_INCREMENT=1
;

select * from timetable;

INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "MONDAY", "0900", "0");
INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "MONDAY", "1000", "0");
INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "MONDAY", "1100", "0");
INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "MONDAY", "1200", "0");
INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "MONDAY", "1300", "0");
INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "MONDAY", "1400", "1");
INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "MONDAY", "1500", "1");
INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "MONDAY", "1600", "1");
INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "MONDAY", "1700", "1");
INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "TUESDAY", "0900", "0");
INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "TUESDAY", "1000", "0");
INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "TUESDAY", "1100", "0");
INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "TUESDAY", "1200", "0");
INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "TUESDAY", "1300", "0");
INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "TUESDAY", "1400", "0");
INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "TUESDAY", "1500", "0");
INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "TUESDAY", "1600", "0");
INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "TUESDAY", "1700", "0");
INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "WEDNESDAY", "0900", "0");
INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "WEDNESDAY", "1000", "0");
INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "WEDNESDAY", "1100", "0");
INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "WEDNESDAY", "1200", "0");
INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "WEDNESDAY", "1300", "0");
INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "WEDNESDAY", "1400", "0");
INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "WEDNESDAY", "1500", "0");
INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "WEDNESDAY", "1600", "1");
INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "WEDNESDAY", "1700", "1");
INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "THURSDAY", "0900", "0");
INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "THURSDAY", "1000", "0");
INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "THURSDAY", "1100", "0");
INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "THURSDAY", "1200", "0");
INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "THURSDAY", "1300", "1");
INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "THURSDAY", "1400", "0");
INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "THURSDAY", "1500", "0");
INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "THURSDAY", "1600", "0");
INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "THURSDAY", "1700", "0");
INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "FRIDAY", "0900", "0");
INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "FRIDAY", "1000", "0");
INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "FRIDAY", "1100", "0");
INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "FRIDAY", "1200", "0");
INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "FRIDAY", "1300", "0");
INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "FRIDAY", "1400", "1");
INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "FRIDAY", "1500", "0");
INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "FRIDAY", "1600", "0");
INSERT INTO `timetable` (`roomID`, `day`, `time`, `isFree`) VALUES ("A10", "FRIDAY", "1700", "0");


select * from timetable;