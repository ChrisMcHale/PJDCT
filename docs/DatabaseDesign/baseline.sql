CREATE TABLE `PTS`.`tbl_UserInfo`
(
 `UserInfo_ID`           int NOT NULL AUTO_INCREMENT ,
 `UserInfo_Username`     varchar(45) NOT NULL ,
 `UserInfo_Password`     char(128) NOT NULL ,
 `UserInfo_Forname`      varchar(45) NOT NULL ,
 `UserInfo_Surname`      varchar(45) NOT NULL ,
 `UserInfo_EmailAddress` varchar(45) NOT NULL ,

PRIMARY KEY (`UserInfo_ID`)
);

CREATE TABLE `PTS`.`tbl_UserRoles`
(
 `UserRole_ID`   int NOT NULL AUTO_INCREMENT ,
 `UserRole_Name` varchar(45) NOT NULL ,

PRIMARY KEY (`UserRole_ID`)
);

CREATE TABLE `PTS`.`tbl_UserToRole`
(
 `UserToRole_ID` int NOT NULL AUTO_INCREMENT ,
 `UserInfo_ID`   int NOT NULL ,
 `UserRole_ID`   int NOT NULL ,

PRIMARY KEY (`UserToRole_ID`),
KEY `FK_31` (`UserInfo_ID`),
CONSTRAINT `FK_29` FOREIGN KEY `FK_31` (`UserInfo_ID`) REFERENCES `PTS`.`tbl_UserInfo` (`UserInfo_ID`),
KEY `FK_34` (`UserRole_ID`),
CONSTRAINT `FK_32` FOREIGN KEY `FK_34` (`UserRole_ID`) REFERENCES `PTS`.`tbl_UserRoles` (`UserRole_ID`)
);


CREATE TABLE `PTS`.`tbl_LiftType`
(
 `LiftType_ID`   int NOT NULL AUTO_INCREMENT ,
 `LiftType_Name` varchar(45) NOT NULL ,

PRIMARY KEY (`LiftType_ID`)
);


CREATE TABLE `PTS`.`tbl_LiftSubType`
(
 `LiftSubType_ID`   int NOT NULL AUTO_INCREMENT ,
 `LiftType_ID`      int NOT NULL ,
 `LiftSubType_Name` varchar(45) NOT NULL ,

PRIMARY KEY (`LiftSubType_ID`),
KEY `FK_152` (`LiftType_ID`),
CONSTRAINT `FK_150` FOREIGN KEY `FK_152` (`LiftType_ID`) REFERENCES `PTS`.`tbl_LiftType` (`LiftType_ID`)
);

CREATE TABLE `PTS`.`tbl_LiftResult`
(
 `LiftResult_ID`   int NOT NULL AUTO_INCREMENT ,
 `LiftResult_Name` varchar(45) NOT NULL ,

PRIMARY KEY (`LiftResult_ID`)
);

CREATE TABLE `PTS`.`tbl_Session`
(
 `Session_ID`          int NOT NULL AUTO_INCREMENT ,
 `Session_Name`        varchar(45) NOT NULL ,
 `Session_DateTime`    datetime NOT NULL ,
 `Session_Competition` bit NOT NULL ,

PRIMARY KEY (`Session_ID`)
);

CREATE TABLE `PTS`.`tbl_Set`
(
 `Set_ID`              int NOT NULL AUTO_INCREMENT ,
 `Trainer_ID`          int NOT NULL ,
 `Creator_ID`          int NOT NULL ,
 `LiftSubType_ID`      int NOT NULL ,
 `LiftResult_ID`       int NOT NULL ,
 `Session_ID`          int NOT NULL ,
 `Athlete_ID`          int NOT NULL ,
 `Set_Weight`          decimal NOT NULL ,
 `Set_RepsTarget`      int NOT NULL ,
 `Set_RepsSuccessfull` int NOT NULL ,
 `Set_RestPeriod`      int NOT NULL ,

PRIMARY KEY (`Set_ID`),
KEY `FK_109` (`LiftResult_ID`),
CONSTRAINT `FK_107` FOREIGN KEY `FK_109` (`LiftResult_ID`) REFERENCES `PTS`.`tbl_LiftResult` (`LiftResult_ID`),
KEY `FK_156` (`LiftSubType_ID`),
CONSTRAINT `FK_153` FOREIGN KEY `FK_156` (`LiftSubType_ID`) REFERENCES `PTS`.`tbl_LiftSubType` (`LiftSubType_ID`),
KEY `FK_162` (`Creator_ID`),
CONSTRAINT `FK_160` FOREIGN KEY `FK_162` (`Creator_ID`) REFERENCES `PTS`.`tbl_UserInfo` (`UserInfo_ID`),
KEY `FK_165` (`Trainer_ID`),
CONSTRAINT `FK_163` FOREIGN KEY `FK_165` (`Trainer_ID`) REFERENCES `PTS`.`tbl_UserInfo` (`UserInfo_ID`),
KEY `FK_95` (`Athlete_ID`),
CONSTRAINT `FK_93` FOREIGN KEY `FK_95` (`Athlete_ID`) REFERENCES `PTS`.`tbl_UserInfo` (`UserInfo_ID`),
KEY `FK_99` (`Session_ID`),
CONSTRAINT `FK_97` FOREIGN KEY `FK_99` (`Session_ID`) REFERENCES `PTS`.`tbl_Session` (`Session_ID`)
);









