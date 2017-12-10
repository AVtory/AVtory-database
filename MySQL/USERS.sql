/*
 * Authors - Jason Sneddon & Nick Wallingford
 * Date    - 10 December 2017
 * Course  - CS 441: Software Engineering
 * Purpose - AVtory Database: Log Table 
 */

CREATE TABLE `USERS` 
(
  `User_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(35) NOT NULL,
  `Password_Hash` char(88) DEFAULT NULL,
  `Salt` char(43) NOT NULL,
  `Work_Factor` tinyint(4) NOT NULL DEFAULT '15',
  
  PRIMARY KEY (`User_ID`),
  UNIQUE KEY `Users_Username_Unique` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

