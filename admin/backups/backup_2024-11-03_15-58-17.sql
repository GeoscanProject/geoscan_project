DROP TABLE IF EXISTS `tbl_actionlogs`;
CREATE TABLE `tbl_actionlogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `action_id` int(11) NOT NULL,
  `action_desc` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tbl_actionlogs` VALUES ("240","1","","5","Department vtfvvt updated","2024-11-03 06:31:42");
INSERT INTO `tbl_actionlogs` VALUES ("241","1","","5","Department vtfvvt updated","2024-11-03 06:33:34");
INSERT INTO `tbl_actionlogs` VALUES ("242","1","","22","Department test created","2024-11-03 06:38:32");
INSERT INTO `tbl_actionlogs` VALUES ("243","1","","23","Deleted DEPARTMENT test","2024-11-03 06:40:07");
INSERT INTO `tbl_actionlogs` VALUES ("244","1","","22","Department Test created","2024-11-03 06:40:15");
INSERT INTO `tbl_actionlogs` VALUES ("245","1","","23","Deleted DEPARTMENT Test","2024-11-03 06:40:25");
INSERT INTO `tbl_actionlogs` VALUES ("246","1","","22","Department College of Computing Studies created","2024-11-03 06:41:00");
INSERT INTO `tbl_actionlogs` VALUES ("247","1","","22","Department College of Engineering created","2024-11-03 06:41:20");
INSERT INTO `tbl_actionlogs` VALUES ("248","1","","22","Department College of Education created","2024-11-03 06:41:38");
INSERT INTO `tbl_actionlogs` VALUES ("249","1","","4","Program College of Industrial Engineering created","2024-11-03 06:42:57");
INSERT INTO `tbl_actionlogs` VALUES ("250","1","","5","Program Bachelor of Science in Industrial Engineering updated","2024-11-03 06:43:42");
INSERT INTO `tbl_actionlogs` VALUES ("251","1","","4","Program Bachelor of Science in Information Technology created","2024-11-03 06:44:17");
INSERT INTO `tbl_actionlogs` VALUES ("252","1","","4","Program Bachelor of Science in Secondary Educatio created","2024-11-03 06:44:43");
INSERT INTO `tbl_actionlogs` VALUES ("253","1","","5","Program Bachelor of Science in Secondary Education updated","2024-11-03 06:44:54");
INSERT INTO `tbl_actionlogs` VALUES ("254","1","","1","Coordinator account created for charry","2024-11-03 06:47:26");
INSERT INTO `tbl_actionlogs` VALUES ("255","66650","2101760","18","Requirement PNC:AA-FO-25 Set Approved for Student Charisma Azores","2024-11-03 07:16:48");
INSERT INTO `tbl_actionlogs` VALUES ("256","1","","20","Database backup created to file in date of: 2024-11-03_15-58-17","2024-11-03 07:58:17");


DROP TABLE IF EXISTS `tbl_adjustments`;
CREATE TABLE `tbl_adjustments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` varchar(255) NOT NULL,
  `records` varchar(255) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `reject_reason` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `tbl_admin`;
CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `reset_token` varchar(255) NOT NULL,
  `token_expiry` datetime NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tbl_admin` VALUES ("1","imspnc_linkages","$2y$10$SLxrefUm2QTm8IXgUoidQO9Fq9MKC03bEs3AWdQ2dmIzBOfJQpGqm","imspnc69@gmail.com","","0000-00-00 00:00:00","2024-04-06 02:38:26");


DROP TABLE IF EXISTS `tbl_companies`;
CREATE TABLE `tbl_companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(255) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `tbl_coordinators`;
CREATE TABLE `tbl_coordinators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coordinator_id` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `department_id` int(11) NOT NULL,
  `reset_token` varchar(255) NOT NULL,
  `token_expiry` datetime NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tbl_coordinators` VALUES ("24","66650","charry","$2y$10$MVL/zZ8fmFfYiGQQ3CDdk.bkccQSslWIhZO.mvCv.emuO9k3olbLW","Cha","Azores","azorescharisma60@gmail.com","56958","","0000-00-00 00:00:00","2024-11-03 06:47:26");


DROP TABLE IF EXISTS `tbl_departments`;
CREATE TABLE `tbl_departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) NOT NULL,
  `department_name` varchar(255) NOT NULL,
  `department_code` varchar(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tbl_departments` VALUES ("6","56958","College of Computing Studies","CCS","2024-11-03 06:41:00");
INSERT INTO `tbl_departments` VALUES ("7","14744","College of Engineering","COE","2024-11-03 06:41:20");
INSERT INTO `tbl_departments` VALUES ("8","25410","College of Education","COED","2024-11-03 06:41:38");


DROP TABLE IF EXISTS `tbl_programs`;
CREATE TABLE `tbl_programs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) NOT NULL,
  `program_id` varchar(255) NOT NULL,
  `program_name` varchar(100) NOT NULL,
  `program_hour` int(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tbl_programs` VALUES ("30","14744","60314","Bachelor of Science in Industrial Engineering","300","2024-11-03 06:42:57");
INSERT INTO `tbl_programs` VALUES ("31","56958","12898","Bachelor of Science in Information Technology","500","2024-11-03 06:44:17");
INSERT INTO `tbl_programs` VALUES ("32","25410","83465","Bachelor of Science in Secondary Education","480","2024-11-03 06:44:43");


DROP TABLE IF EXISTS `tbl_reference`;
CREATE TABLE `tbl_reference` (
  `action_id` int(11) NOT NULL,
  `action_name` varchar(255) NOT NULL,
  PRIMARY KEY (`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tbl_reference` VALUES ("1","Created a coordinator");
INSERT INTO `tbl_reference` VALUES ("2","Updated a coordinator");
INSERT INTO `tbl_reference` VALUES ("3","Deleted a coordinator");
INSERT INTO `tbl_reference` VALUES ("4","Created a program");
INSERT INTO `tbl_reference` VALUES ("5","Updated a program");
INSERT INTO `tbl_reference` VALUES ("6","Deleted a program");
INSERT INTO `tbl_reference` VALUES ("7","Created a company");
INSERT INTO `tbl_reference` VALUES ("8","Updated a company");
INSERT INTO `tbl_reference` VALUES ("9","Deleted a company");
INSERT INTO `tbl_reference` VALUES ("10","Deleted a student");
INSERT INTO `tbl_reference` VALUES ("11","Logged in");
INSERT INTO `tbl_reference` VALUES ("12","Logged out");
INSERT INTO `tbl_reference` VALUES ("13","Exported data");
INSERT INTO `tbl_reference` VALUES ("14","Imported data");
INSERT INTO `tbl_reference` VALUES ("15","Changed system settings");
INSERT INTO `tbl_reference` VALUES ("16","Performed a security audit");
INSERT INTO `tbl_reference` VALUES ("17","Set Status Student");
INSERT INTO `tbl_reference` VALUES ("18","Set Requirement Status Intern");
INSERT INTO `tbl_reference` VALUES ("19","Set Adjustment Status Intern");
INSERT INTO `tbl_reference` VALUES ("20","Created a backup file");
INSERT INTO `tbl_reference` VALUES ("21","Restored a backup file");
INSERT INTO `tbl_reference` VALUES ("22","ACTION_CREATE_DEPARTMENT");
INSERT INTO `tbl_reference` VALUES ("23","ACTION_DELETE_DEPARTMENT");


DROP TABLE IF EXISTS `tbl_requirements`;
CREATE TABLE `tbl_requirements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` varchar(50) NOT NULL,
  `form_type` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `status` varchar(50) DEFAULT 'Pending',
  `cancel_reason` varchar(255) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tbl_requirements` VALUES ("23","2101760","PNC:AA-FO-25","Guidelines-for-FInal-Defense-1st-SEM-SY-2024-25.pdf","requirements/Guidelines-for-FInal-Defense-1st-SEM-SY-2024-25.pdf","Approved","","2024-11-03 06:57:41");
INSERT INTO `tbl_requirements` VALUES ("24","2101760","PNC:AA-FO-28","Flowchart-Guide.pdf","requirements/Flowchart-Guide.pdf","Pending","","2024-11-03 07:07:52");


DROP TABLE IF EXISTS `tbl_timelogs`;
CREATE TABLE `tbl_timelogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` varchar(255) NOT NULL,
  `pin` char(4) NOT NULL,
  `type` enum('time_in','time_out') NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `longitude` decimal(9,6) NOT NULL,
  `latitude` decimal(9,6) NOT NULL,
  `photo` mediumblob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



DROP TABLE IF EXISTS `tbl_users`;
CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` varchar(255) NOT NULL,
  `credential_id` text DEFAULT NULL,
  `attestation_object` text DEFAULT NULL,
  `client_data_json` text DEFAULT NULL,
  `pin` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `program_id` int(11) NOT NULL,
  `coordinator_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `profile_pic` varchar(255) NOT NULL,
  `reset_token` varchar(255) NOT NULL,
  `token_expiry` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tbl_users` VALUES ("134","2101760",NULL,NULL,NULL,"$2y$10$lC7wHg2erZnpHVKOHcuIIOXstl1Vw9HCuwrTsHew1ZLK..CTdlrRm","Charisma","Azores","azorescharisma60@gmail.com","09528372812","Katapatan, Cabuyao","12898","66650","Active","2024-11-03 06:54:23","142174304d8558ec8ce4f2417493c335.jpg","","0000-00-00 00:00:00");


