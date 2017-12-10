/*
 * Author  - Jason Sneddon
 * Date    - 10 December 2017
 * Course  - CS 441: Software Engineering
 * Purpose - AVtory Database: Item_Type Table
 * Example - Within a Category, such as Audio, there are 
 *           many TYPES of items, such as Microphones, 
 *           Receiver, Mixers, Speakers, etc.  
 */

CREATE TABLE `ITEM_TYPE` 
(
  `Item_Type_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Category_ID` int(11) NOT NULL,
  `Item_Type_Name` varchar(45) NOT NULL,
  
  PRIMARY KEY (`Item_Type_ID`),
  KEY `Item_Type_Category_FK` (`Category_ID`),
  CONSTRAINT `Item_Type_Category_FK` FOREIGN KEY (`Category_ID`) 
  	REFERENCES `CATEGORY` (`Category_ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
