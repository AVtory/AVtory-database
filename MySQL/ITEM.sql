/*
 * Author  - Jason Sneddon
 * Date    - 10 December 2017
 * Course  - CS 441: Software Engineering
 * Purpose - AVtory Database: Item Table used to represent a 
 *           piece of equipment or inventory. 
 */

CREATE TABLE `ITEM` 
(
  `Item_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Category_ID` int(11) NOT NULL,
  `Location_ID` int(11) NOT NULL,
  `Finance_ID` int(11) NOT NULL,
  `Item_Type_ID` int(11) NOT NULL,
  `Item_Name` varchar(45) NOT NULL,
  `Date_Added` datetime NOT NULL,
  `Description` varchar(300) NOT NULL,
  `Model` varchar(45) NOT NULL,
  `Serial` varchar(45) NOT NULL,
  `In_Service` varchar(10) NOT NULL,
  
  PRIMARY KEY (`Item_ID`),
  KEY `Item_Category_FK` (`Category_ID`),
  KEY `Item_Location_FK` (`Location_ID`),
  KEY `Item_Finance_FK` (`Finance_ID`),
  KEY `Item_Item_Type_FK` (`Item_Type_ID`),
  CONSTRAINT `Item_Category_FK` FOREIGN KEY (`Category_ID`) 
    REFERENCES `CATEGORY` (`Category_ID`) ON DELETE CASCADE,
  CONSTRAINT `Item_Finance_FK` FOREIGN KEY (`Finance_ID`) 
    REFERENCES `FINANCE` (`Finance_ID`) ON DELETE CASCADE,
  CONSTRAINT `Item_Item_Type_FK` FOREIGN KEY (`Item_Type_ID`) 
    REFERENCES `ITEM_TYPE` (`Item_Type_ID`) ON DELETE CASCADE,
  CONSTRAINT `Item_Location_FK` FOREIGN KEY (`Location_ID`) 
    REFERENCES `LOCATION` (`Location_ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;
