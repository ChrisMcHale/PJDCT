USE PTS;
LOCK TABLES `tbl_UserInfo` WRITE;
/*!40000 ALTER TABLE `tbl_UserInfo` DISABLE KEYS */;
INSERT INTO `tbl_UserInfo` VALUES (1,'Administrator','password','Admin','istrator','admin@admin.com');
/*!40000 ALTER TABLE `tbl_UserInfo` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `tbl_UserRoles` WRITE;
/*!40000 ALTER TABLE `tbl_UserRoles` DISABLE KEYS */;
INSERT INTO `tbl_UserRoles` VALUES (1,'Administrator'),(2,'Coach'),(3,'Athlete');
/*!40000 ALTER TABLE `tbl_UserRoles` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `tbl_UserToRole` WRITE;
/*!40000 ALTER TABLE `tbl_UserToRole` DISABLE KEYS */;
INSERT INTO `tbl_UserToRole` VALUES (1,1,1);
/*!40000 ALTER TABLE `tbl_UserToRole` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `tbl_LiftType` WRITE;
/*!40000 ALTER TABLE `tbl_LiftType` DISABLE KEYS */;
INSERT INTO `tbl_LiftType` VALUES (1,'Bench Press'),(2,'Squat'),(3,'Deadlift');
/*!40000 ALTER TABLE `tbl_LiftType` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `tbl_LiftSubType` WRITE;
/*!40000 ALTER TABLE `tbl_LiftSubType` DISABLE KEYS */;
INSERT INTO `tbl_LiftSubType` VALUES (1,1,'Standard'),(2,1,'Narrow Grip'),(3,2,'Standard'),(4,2,'Paused'),(5,3,'Standard'),(6,3,'Deficit');
/*!40000 ALTER TABLE `tbl_LiftSubType` ENABLE KEYS */;
UNLOCK TABLES;