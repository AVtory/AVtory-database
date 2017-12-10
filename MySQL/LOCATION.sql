/*
 * Author  - Jason Sneddon
 * Date    - 10 December 2017
 * Course  - CS 441: Software Engineering
 * Purpose - AVtory Database: Location Table used to indentify a
 *	         particular area where a piece of equipment is stored 
 *           within a department.  
 */

CREATE TABLE `LOCATION` 
(
  `Location_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Department_ID` int(11) NOT NULL,
  `Location_Name` varchar(300) NOT NULL,
  
  PRIMARY KEY (`Location_ID`),
  KEY `Location_Depart_FK_idx` (`Department_ID`),
  CONSTRAINT `Location_Department_FK` FOREIGN KEY (`Department_ID`) 
  	REFERENCES `DEPARTMENT` (`Department_ID`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

