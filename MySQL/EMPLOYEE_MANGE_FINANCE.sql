/*
 * Author  - Jason Sneddon
 * Date    - 10 December 2017
 * Course  - CS 441: Software Engineering
 * Purpose - AVtory Database: Illustrates the Many-to-Many 
 *           Relationship between EMPLOYEE & FINANCE
 */

CREATE TABLE `EMPLOYEE_MANAGE_FINANCE` 
(
  `Employee_ID` int(11) NOT NULL,
  `Finance_ID` int(11) NOT NULL,
  
  PRIMARY KEY (`Employee_ID`,`Finance_ID`),
  KEY `Employee_Manage_Finance_Finance_FK` (`Finance_ID`),
  CONSTRAINT `Employee_Manage_Finance_Employee_FK` FOREIGN KEY (`Employee_ID`) 
  	REFERENCES `EMPLOYEE` (`Employee_ID`) ON DELETE CASCADE,
  CONSTRAINT `Employee_Manage_Finance_Finance_FK` FOREIGN KEY (`Finance_ID`) 
  	REFERENCES `FINANCE` (`Finance_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
