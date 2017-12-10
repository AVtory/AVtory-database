/*
 * Author  - Jason Sneddon
 * Date    - 10 December 2017
 * Course  - CS 441: Software Engineering
 * Purpose - AVtory Database: Finance Table 
 */

CREATE TABLE `FINANCE` 
(
  `Finance_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Price` decimal(10,2) DEFAULT NULL,
  `Depreciation` decimal(10,2) DEFAULT NULL,
  
  PRIMARY KEY (`Finance_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
