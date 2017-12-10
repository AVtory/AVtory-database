/*
 * Author  - Jason Sneddon
 * Date    - 10 December 2017
 * Course  - CS 441: Software Engineering
 * Purpose - AVtory Database: Maintenance Table 
 */

CREATE TABLE `MAINTENANCE` 
(
  `Maintenance_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Item_ID` int(11) NOT NULL,
  `Date_Sent` datetime NOT NULL,
  `State_of_Item` varchar(35) NOT NULL,
  `Maintenance_Notes` varchar(500) DEFAULT NULL,
  
  PRIMARY KEY (`Maintenance_ID`),
  KEY `Maintenance_Item_FK` (`Item_ID`),
  CONSTRAINT `Maintenance_Item_FK` FOREIGN KEY (`Item_ID`) 
  	REFERENCES `ITEM` (`Item_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
