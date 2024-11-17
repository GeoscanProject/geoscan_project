DROP TABLE IF EXISTS `tbl_actionlogs`;
CREATE TABLE `tbl_actionlogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `action_id` int(11) NOT NULL,
  `action_desc` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tbl_actionlogs` VALUES ("17","1","","7","Company Test created","2024-09-02 23:30:09");
INSERT INTO `tbl_actionlogs` VALUES ("18","1","","9","Deleted company Test","2024-09-02 23:30:12");
INSERT INTO `tbl_actionlogs` VALUES ("19","1","","3","Deleted coordinator ","2024-09-02 23:32:31");
INSERT INTO `tbl_actionlogs` VALUES ("20","1","","1","Coordinator account created for test","2024-09-02 23:32:51");
INSERT INTO `tbl_actionlogs` VALUES ("21","1","","3","Deleted coordinator test","2024-09-02 23:32:54");
INSERT INTO `tbl_actionlogs` VALUES ("22","1","","4","Program Test created","2024-09-02 23:34:39");
INSERT INTO `tbl_actionlogs` VALUES ("23","1","","6","Deleted program Test","2024-09-02 23:34:42");
INSERT INTO `tbl_actionlogs` VALUES ("24","1","","10","Deleted student JobertCadiz","2024-09-02 23:36:38");
INSERT INTO `tbl_actionlogs` VALUES ("25","1","","10","Deleted student John Doe","2024-09-02 23:37:01");
INSERT INTO `tbl_actionlogs` VALUES ("26","1","","4","Program Test created","2024-09-07 08:42:19");
INSERT INTO `tbl_actionlogs` VALUES ("27","1","","6","Deleted program Test","2024-09-07 08:42:40");
INSERT INTO `tbl_actionlogs` VALUES ("67","10750","1234567","18","Requirement PNC:AA-FO-20 Set Cancelled for Student Jimmy Camangon","2024-09-08 08:35:36");
INSERT INTO `tbl_actionlogs` VALUES ("68","10750","1234567","18","Requirement PNC:AA-FO-21 Set Approved for Student Jimmy Camangon","2024-09-08 08:35:39");
INSERT INTO `tbl_actionlogs` VALUES ("69","10750","123456","18","Requirement PNC:AA-FO-24 Set Cancelled for Student Jobert Cadiz","2024-09-08 08:35:44");
INSERT INTO `tbl_actionlogs` VALUES ("72","10750","1234567","19","Adjustment request for Student Jimmy Camangon has been approved. Reason: Nakalimutan ko po sorry po.","2024-09-08 09:34:21");
INSERT INTO `tbl_actionlogs` VALUES ("73","10750","123456","19","Adjustment request for Student Jobert Cadiz has been approved. Reason: Nakalimutan ko din po.","2024-09-08 09:34:54");
INSERT INTO `tbl_actionlogs` VALUES ("74","1","123456","19","Adjustment request for Student Jobert Cadiz has been approved. Reason: Nakalimutan ko din po.","2024-09-08 12:51:03");
INSERT INTO `tbl_actionlogs` VALUES ("75","1","1234567","19","Adjustment request for Student Jimmy Camangon has been approved. Reason: Nakalimutan ko po sorry po.","2024-09-08 12:52:56");
INSERT INTO `tbl_actionlogs` VALUES ("76","1","","4","Program ddsdas created","2024-10-22 20:56:37");
INSERT INTO `tbl_actionlogs` VALUES ("77","1","","6","Deleted program ddsdas","2024-10-22 20:56:43");
INSERT INTO `tbl_actionlogs` VALUES ("78","1","","4","Program dasdasd created","2024-10-22 21:09:34");
INSERT INTO `tbl_actionlogs` VALUES ("79","1","","6","Deleted program dasdasd","2024-10-22 21:09:39");
INSERT INTO `tbl_actionlogs` VALUES ("80","1","","7","Company Logitech created","2024-10-22 21:22:18");
INSERT INTO `tbl_actionlogs` VALUES ("81","1","","4","Program sas created","2024-10-30 18:50:54");
INSERT INTO `tbl_actionlogs` VALUES ("82","1","","6","Deleted program sas","2024-10-30 18:50:58");
INSERT INTO `tbl_actionlogs` VALUES ("83","1","","20","Department College of Engineering created","2024-10-30 18:59:39");
INSERT INTO `tbl_actionlogs` VALUES ("84","1","","4","Program sas created","2024-10-30 19:41:51");
INSERT INTO `tbl_actionlogs` VALUES ("85","1","","6","Deleted program sas","2024-10-30 19:41:57");
INSERT INTO `tbl_actionlogs` VALUES ("86","1","","4","Program Bachelor of Science in Computer Science created","2024-10-30 19:42:15");
INSERT INTO `tbl_actionlogs` VALUES ("87","1","","4","Program Bachelor of Science in Industrial Engineering  created","2024-10-30 19:57:04");
INSERT INTO `tbl_actionlogs` VALUES ("88","1","","3","Deleted coordinator lorenz","2024-10-30 20:30:02");
INSERT INTO `tbl_actionlogs` VALUES ("89","1","","4","Program asasa created","2024-10-30 20:31:54");
INSERT INTO `tbl_actionlogs` VALUES ("90","1","","6","Deleted program asasa","2024-10-30 20:31:57");
INSERT INTO `tbl_actionlogs` VALUES ("91","1","","1","Coordinator account created for Lorenz","2024-10-30 20:36:52");
INSERT INTO `tbl_actionlogs` VALUES ("92","1","","1","Coordinator account created for Coor_001","2024-10-30 21:45:31");
INSERT INTO `tbl_actionlogs` VALUES ("93","1","","6","Deleted program Bachelor of Science in Industrial Engineering ","2024-11-03 10:51:52");
INSERT INTO `tbl_actionlogs` VALUES ("94","1","","21","Deleted DEPARTMENT College of Engineering","2024-11-03 11:09:05");
INSERT INTO `tbl_actionlogs` VALUES ("95","1","","5","Department College of Computing Studies updated","2024-11-03 11:33:39");
INSERT INTO `tbl_actionlogs` VALUES ("96","1","","5","Department College of Computing Studies updated","2024-11-03 11:35:52");
INSERT INTO `tbl_actionlogs` VALUES ("97","1","","20","Database backup created to file in date of: 2024-11-03_13-45-12","2024-11-03 13:45:12");


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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tbl_adjustments` VALUES ("6","1234567","2024-09-01,2024-09-02","Nakalimutan ko po sorry po.","","Approved","2024-09-08 12:56:48");
INSERT INTO `tbl_adjustments` VALUES ("7","1234566","2024-08-31","Nakalimutan ko lang din po sorry po :3","","Pending","2024-09-08 01:08:38");
INSERT INTO `tbl_adjustments` VALUES ("8","123456","2024-08-31","Nakalimutan ko din po.","","Adjusted","2024-09-08 12:51:03");


DROP TABLE IF EXISTS `tbl_admin`;
CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `reset_token` varchar(255) NOT NULL,
  `token_expiry` datetime DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tbl_admin` VALUES ("1","admin","$2y$10$YLZ1lWWJ7MFc2/Hk04kVPOMTeJ/8HbCja33lTb0hyq0I9IxzQMWVO","imspnc69@gmail.com","fd572b90f1a1ac934da4fd21e4a7a53b6ff1f901c30da68c56b0055774c17af0","2024-11-03 10:03:24","2024-04-06 10:38:26");


DROP TABLE IF EXISTS `tbl_companies`;
CREATE TABLE `tbl_companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(255) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tbl_companies` VALUES ("14","93767","Logitech","2024-10-22 21:22:18");


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
  `token_expiry` datetime DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tbl_coordinators` VALUES ("7","10750","jims","$2y$10$bafoxK.Rf19YCHNcQ1/uBuTALtgbwSRRd79.N1aIwPNL3KnnNeq8i","Jimmy","Camangon","jimmycamangon7@gmail.com","12331","",NULL,"2024-08-31 13:40:47");
INSERT INTO `tbl_coordinators` VALUES ("13","60947","Lorenz","$2y$10$rsicqsdsZ1HKuphJqtRVauxS3f6oKynPaKEXeqVkt3d.C8syKocWu","Lorenz","Villalobos","lorenzvillalobos.motorcentral@gmail.com","12331","",NULL,"2024-10-30 20:36:52");
INSERT INTO `tbl_coordinators` VALUES ("14","84253","Coor_001","$2y$10$2DZr1DoLTlE2eZ6xhlrO3O3LpL32tHvhKNRgQEUhgD207D0Hq7bvm","Jane","Doe","Quin@example.com","89444","",NULL,"2024-10-30 21:45:31");


DROP TABLE IF EXISTS `tbl_departments`;
CREATE TABLE `tbl_departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) NOT NULL,
  `department_name` varchar(255) NOT NULL,
  `department_code` varchar(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tbl_departments` VALUES ("1","12331","College of Computing Studies","CCS","2024-11-03 11:35:52");


DROP TABLE IF EXISTS `tbl_programs`;
CREATE TABLE `tbl_programs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) NOT NULL,
  `program_id` varchar(255) NOT NULL,
  `program_name` varchar(100) NOT NULL,
  `program_hour` int(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tbl_programs` VALUES ("10","12331","95742","Bachelor of Science in Information Technology","500","2024-08-31 13:42:05");
INSERT INTO `tbl_programs` VALUES ("22","12331","39640","Bachelor of Science in Computer Science","400","2024-10-30 19:42:15");


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


DROP TABLE IF EXISTS `tbl_requirements`;
CREATE TABLE `tbl_requirements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` varchar(50) NOT NULL,
  `form_type` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `status` varchar(50) DEFAULT 'Pending',
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tbl_requirements` VALUES ("11","1234567","PNC:AA-FO-20","UC-PnC-Internship-Manual-1.pdf","requirements/UC-PnC-Internship-Manual-1.pdf","Cancelled","2024-09-07 08:29:29");
INSERT INTO `tbl_requirements` VALUES ("12","1234567","PNC:AA-FO-21","UC-PnC-Internship-Manual-1.pdf","requirements/UC-PnC-Internship-Manual-1.pdf","Approved","2024-09-07 16:01:20");
INSERT INTO `tbl_requirements` VALUES ("13","1234566","PNC:AA-FO-22","UC-PnC-Internship-Manual-1.pdf","requirements/UC-PnC-Internship-Manual-1.pdf","Approved","2024-09-07 16:44:50");
INSERT INTO `tbl_requirements` VALUES ("14","123456","PNC:AA-FO-24","UC-PnC-Internship-Manual-1.pdf","requirements/UC-PnC-Internship-Manual-1.pdf","Cancelled","2024-09-08 08:33:32");
INSERT INTO `tbl_requirements` VALUES ("15","3215432","PNC:AA-FO-20","UC-PnC-Internship-Manual-1.pdf","requirements/UC-PnC-Internship-Manual-1.pdf","Pending","2024-09-21 16:10:33");
INSERT INTO `tbl_requirements` VALUES ("16","5789450","PNC:AA-FO-20","Atienza, Claren R_4IT-A.pdf","requirements/Atienza, Claren R_4IT-A.pdf","Pending","2024-11-03 13:23:29");


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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tbl_timelogs` VALUES ("99","1234566","$2y$","time_in","2024-09-22 17:56:16","121.035100","14.381500","1726998969-photo.png");


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
  `profile_pic` varchar(255) DEFAULT NULL,
  `reset_token` varchar(255) NOT NULL,
  `token_expiry` datetime DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tbl_users` VALUES ("17","1234567","x02NSE73OU/QCt9+PyW6Qz4ro+oCPc6Sd+6PVkW3yoU=","o2NmbXRmcGFja2VkZ2F0dFN0bXSiY2FsZzkBAGNzaWdZAQCqeMGOup0vuILjr8oz/cC2WTOG5XNVwgITNXlB6uD35F5AQcUw0kBBlot8hD6TH7dPffgnPZgQ8R1JoKmBFI6VOH0lV3jYlNlp9ryrxwQogMOLc6mjlhJiK+RtYTNidAGFwHn/8qr7Wy+00dI5U0y8zrNyO8SanwsV/HsQ9Z97I37/slgGz6cOwSiEdUpSjxrZVZdN2tWm4+movRJNhe4b+40EXjz710H5CWeczKY0la/FmX3cwggb7TVDtxsd2J24/QJXonYVHtCV+aUX+/CF2uXNdG2IaUfK+mlA4Ar798b6GXFzpAy+Xx1KWO8rpS7BymnoR3pioI9Af1isnq1DaGF1dGhEYXRhWQFnSZYN5YgOjGh0NBcPZHZgW4/krrmihjLHmVzzuoMdl2NFAAAAAGAosBex1EwCtLOvza/Ja7IAIMdNjUhO9zlP0Arffj8lukM+K6PqAj3Oknfuj1ZFt8qFpAEDAzkBACBZAQDpCwXlI4Keo/ox75/2K+ov1igwmto6Vey5lZHpqDGYZh6SLUjmCVxAD6wRU6c/p8c/tHc9VhJo/LF6KjWglT8G79vqmT+l5TZHXnZHp55kmiSYz67glNWKmwo9mUrWd0SPiPYbGP0NR24BHdPUlHg+AshXuwBa3O6f+NZsFdfBsyAl6Jqks+DorgYhM5mUMjMZXPnWBXpP51G0+uCS5yEgrehcoJ5ZUnJLtIyZN9538pRYqo3kgm29EIyBQWslxFhdXsx7pSsUIpRsqu/nQ/Va71OQOCuGW+02/RRh1Clr/wtfhVjzj8VSHuHr3T8cOWZvj0jmYtqcMyr8PhYAgmUlIUMBAAE=","eyJ0eXBlIjoid2ViYXV0aG4uY3JlYXRlIiwiY2hhbGxlbmdlIjoiLWFiR0h0YWE4d19wNDIyWTVrM3N6eWozd01fV1NaYjY1VmlZdnJJN3IxdyIsIm9yaWdpbiI6Imh0dHA6Ly9sb2NhbGhvc3QiLCJjcm9zc09yaWdpbiI6ZmFsc2V9","$2y$10$E5C5eRWIN.ZAWIEv07G5..rie7g2etoeTd5NZsZ22oqZdJz2vp3jC","Jimmy","Camangon","jimmycamangon7@gmail.com","09365220532","Caingin","95742","10750","Active",NULL,"",NULL,"2024-09-07 10:12:29");
INSERT INTO `tbl_users` VALUES ("21","1234566","5a/vHoKyxBFUV0LMUXpMhfyyowW2TNPAEK9kbLA1Lfs=","o2NmbXRmcGFja2VkZ2F0dFN0bXSiY2FsZzkBAGNzaWdZAQCLk1g4aW8zUqLyNjQizsUi3ZFJOCIfRsQKZggbWhihlaz2+Bq5+b0QlZlE1cQuLGZwDDOWwCnHQGxZ0mbKV/UOQg7cTq37LIDLrzC2F/0Dqo4DvZGBifZgLHDYpSlKoTzf+Aor6Vrwz0mrcOmjVXwfkNZ/7kNv0TxZs+RIVvT6eeeEjuw2cE5lKXaUdpc43tmzcbAOZR1dxhNjavJZE3GBuwtDu5lqdwP0FzVXHMBR4clDTiLJ9AXkUnClOydpTq7RhHHQM6mhVfThOHZVbgGdkPZoDmZI9/EwFP/9RJu9kYwqTDQEvKZSB+TLn23AE/7zONhF7+QSSq0x71wgiqquaGF1dGhEYXRhWQFnSZYN5YgOjGh0NBcPZHZgW4/krrmihjLHmVzzuoMdl2NFAAAAAGAosBex1EwCtLOvza/Ja7IAIOWv7x6CssQRVFdCzFF6TIX8sqMFtkzTwBCvZGywNS37pAEDAzkBACBZAQCyqROVt4ASXc1sMS/rI7U+Nk1BSYxwk50SPiEfwI1h1Ks5b58gYzZH/JeUsB52Umdz9FOLqvNhitFoe9kta24ZDloT+30MvxKvCFPRx6E7FhCX1Ux6sHqE85YYTJonLhTlb5rdtsrg7GS/U77nVwtvjhnQsQRrBNQfslHrCPCDxG6UBkYoQ6wA92g9Q2D5dCuNejHQr4xzup/Fqf3hiSLa+D8CvQtqJEoijfYUhq/Am037SrsxKFwpZGKvG7vghRa1PVRxpilJcrqccJzQ8FCmCmEPYwxfm5e5XJy3iwOftEaCECulFpM/237I8OV/DBOt96ZGBzpOeXs0x0v9NYZBIUMBAAE=","eyJ0eXBlIjoid2ViYXV0aG4uY3JlYXRlIiwiY2hhbGxlbmdlIjoiQmNSSlJFTF9UWDJZVUVycFlDbmxQakhtYjUzckI3VTRLaFRKYkpuN2luTSIsIm9yaWdpbiI6Imh0dHA6Ly9sb2NhbGhvc3QiLCJjcm9zc09yaWdpbiI6ZmFsc2V9","$2y$10$z5xH.Uhy.DAr6bytgQkGGOcl4LE0tkXx/OFVDOY.MjBjNDAWIdIT.","Juan","Tamad","juantamad@gmail.com","09365220532","Caingin","95742","46918","Active",NULL,"",NULL,"2024-09-22 17:59:42");
INSERT INTO `tbl_users` VALUES ("22","123456","K+vpXzy45oVJu4613qpeIsKqLFFOQcsB4TAclzu2B4c=","o2NmbXRmcGFja2VkZ2F0dFN0bXSiY2FsZzkBAGNzaWdZAQAj0QQ7ehJtIqwhT0tOvzfmnfc0JBxHSWAaPQVu72+ipOk/a0FtYhPsqamiKZbPsH+ZYmVfq/uFV02P1xpEuethYjoNdtLdCNaZyz4lYuVnLPr1RG+ZhiLw1ATZv5W0mMFJZSbbBOMPA7hlwB94gfeRmm81OI/kHIsiqDAnR5R79b3j8e4aqCs05yfTqOpRd43DTOXx3iJYH+4MCkzIiWnHSS3SWvYq323JgQnvB7Wm/Cwsl4Bs+hT5V1Amwb1ANWAirhG4qxkDBA40B5sEOojYMFu+FClGOm5iYeKjuaniyTlKgTWUklr3u0ZrWPAyVoIrVUPQhAjAvHtUD9tfnlMsaGF1dGhEYXRhWQFnSZYN5YgOjGh0NBcPZHZgW4/krrmihjLHmVzzuoMdl2NFAAAAAGAosBex1EwCtLOvza/Ja7IAICvr6V88uOaFSbuOtd6qXiLCqixRTkHLAeEwHJc7tgeHpAEDAzkBACBZAQDYNWG4Vp9378/UhTrhQg/Dg4+TELpvEbRM6NVKbxu+QNb/rB50+lTpBmmqzOSTA1XbUF9xbDXBY/HdL44pgYVy/FyS/ZJsk2nUTdIqjGqEHZ+dcROXgxa5vfZdSv0KYUPnySzxWp5mNVf6Tb0xbznZz2vEa9eZTYvLCzrJon4rGzmT/ZzPATRWH/6Ec8WRco2QgkoLwETlCIJ7eZHW0VdT4pmkZHENgjQCoDYD4ir9PkmegWudKgVJQI0gsEz2oqWJV3rwv1FDAP7sh78zIC0V0dN+hgl96cnoijKwpWX6rd6ET26E3i/lNR+DJ7S4KckxGabMr1EGPkbUF09ZHBSdIUMBAAE=","eyJ0eXBlIjoid2ViYXV0aG4uY3JlYXRlIiwiY2hhbGxlbmdlIjoiYThpQWVFSDlaV3N2dGNlcHRweWlSUXR3Qm9GVnp5a0tTT0ljemFaMUdFYyIsIm9yaWdpbiI6Imh0dHA6Ly9sb2NhbGhvc3QiLCJjcm9zc09yaWdpbiI6ZmFsc2V9","$2y$10$KPyEbadPCBPrPPQyTHPEdOoEKqbUjKdxj3M3EJGU8dWjYbyKJFpmq","Jobert","Cadiz","jimscams6@gmail.com","09365220532","Caingin","95742","10750","",NULL,"",NULL,"2024-09-08 08:17:33");
INSERT INTO `tbl_users` VALUES ("26","3215432",NULL,NULL,NULL,"$2y$10$SxlMQKHt3YiJvjR41.2rx.ZVlce45Lz55b5jCS5k6yDPpYxD9.yE2","Mark","Smith","Quin@example.com","92453321234","Complex Sta. Rosa Laguna","95742","46918","Active",NULL,"6ec339c52f18f2aa91ae732f777e06a99c9f69240fab28a746992778e6967dd8","2024-10-22 20:57:04","2024-10-22 19:57:04");
INSERT INTO `tbl_users` VALUES ("27","2134234",NULL,NULL,NULL,"$2y$10$mX.45Q24H/Z.SrrWS7Q7pOyMOzesJsiacjduy3MJb72wkJgnFimMW","Lorenz","Villalobos","lorenzvillalobos.motorcentral@gmail.com","92453321234","Malusak Sta. Rosa Laguna","95742","46918","Active","dd99622ab28f1997b81974945bb0945e.png","",NULL,"2024-10-30 18:48:40");
INSERT INTO `tbl_users` VALUES ("29","5789458",NULL,NULL,NULL,"$2y$10$vxmTTHWFLbCAfL8oclruEeG2QUt6kQSgpaF6Q8B0MmeabMZy/ZAva","Jane","Smith","jane.smith@example.com","987-654-3210","456 Oak Avenue","95742","60947","Active","6ff10c6f3d2ba8e048aa38a4a7b480da.jpg","",NULL,"2024-11-03 09:31:57");
INSERT INTO `tbl_users` VALUES ("30","5789450",NULL,NULL,NULL,"$2y$10$EVUTBAP9jx39iIN.Q34JXuArpYr/TFUR8qODBCYes1.IbPRiJ24Pi","Alice","Johnson","alice.johnson@example.com","555-123-4567","789 Pine Road","95742","60947","Active","7e80b8e23102308ecde59b11ae6218c5.png","",NULL,"2024-11-03 09:12:05");


