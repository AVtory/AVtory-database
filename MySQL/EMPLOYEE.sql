/*
 * Author  - Jason Sneddon
 * Date    - 10 December 2017
 * Course  - CS 441: Software Engineering
 * Purpose - AVtory Database - Employee Table
 */

CREATE TABLE `EMPLOYEE` 
(
  `Employee_ID` int(11) NOT NULL AUTO_INCREMENT,
  `User_ID` int(11) NOT NULL,
  `First_Name` varchar(35) NOT NULL,
  `Last_Name` varchar(35) NOT NULL,
  `Email` varchar(75) NOT NULL,
  `Phone_Number` varchar(12) NOT NULL,
  `Is_Admin` tinyint(4) NOT NULL,
  `Role` varchar(25) DEFAULT NULL,
  
  PRIMARY KEY (`Employee_ID`),
  UNIQUE KEY `Employee_Email_Unique` (`Email`),
  KEY `Employee_User_FK` (`User_ID`),
  CONSTRAINT `Employee_User_FK` FOREIGN KEY (`User_ID`) 
    REFERENCES `USERS` (`User_ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
