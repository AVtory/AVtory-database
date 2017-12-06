/*
 * Author  - Jason Sneddon
 * Date    - 25 October 2017
 * Course  - CS 441: Software Engineering
 * Purpose - AVtory Database: Checkout Table 
 */

CREATE TABLE `CHECKOUT` 
(
  `Item_ID` int(11) NOT NULL,
  `Employee_ID` int(11) NOT NULL,
  `Date_Checked_Out` datetime NOT NULL,
  `Due_Date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Item_ID`),
  KEY `Checkout_Employee_FK` (`Employee_ID`),
  CONSTRAINT `Checkout_Employee_FK` FOREIGN KEY (`Employee_ID`) REFERENCES `EMPLOYEE` (`Employee_ID`) ON DELETE CASCADE,
  CONSTRAINT `Checkout_Item_FK` FOREIGN KEY (`Item_ID`) REFERENCES `ITEM` (`Item_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1
