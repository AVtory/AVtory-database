/*
 * Author  - Jason Sneddon
 * Date    - 10 December 2017
 * Course  - CS 441: Software Engineering
 * Purpose - AVtory Database: Department Table
 */

CREATE TABLE `DEPARTMENT` 
(
  `Department_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Department_Name` varchar(35) NOT NULL,
  
  PRIMARY KEY (`Department_ID`),
  UNIQUE KEY `Department_Name_Unique` (`Department_Name`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;
