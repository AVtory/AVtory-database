/*
 * Author   - Jason Sneddon
 * Date     - 10 December 2017
 * Course   - CS 441: Software Engineering
 * Purpose  - AVtory Database: Category Table
 * Examples - Audio, Video, Lighting
 */

CREATE TABLE `CATEGORY` 
(
  `Category_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Category_Name` varchar(35) NOT NULL,
  
  PRIMARY KEY (`Category_ID`),
  UNIQUE KEY `Category_Name_Unique` (`Category_Name`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;
