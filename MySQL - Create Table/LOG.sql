CREATE TABLE `LOG` 
(
  `Log_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Log_Date` datetime NOT NULL,
  `Event` enum('checkin','checkout') NOT NULL DEFAULT 'checkin',
  `Employee_ID` int(11) NOT NULL,
  `Item_ID` int(11) NOT NULL,
  `Comment` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`Log_ID`),
  KEY `Log_Employee_FK_idx` (`Employee_ID`),
  KEY `Log_Item_FK_idx` (`Item_ID`),
  CONSTRAINT `Log_Employee_FK` FOREIGN KEY (`Employee_ID`) REFERENCES `EMPLOYEE` (`Employee_ID`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `Log_Item_FK` FOREIGN KEY (`Item_ID`) REFERENCES `ITEM` (`Item_ID`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1