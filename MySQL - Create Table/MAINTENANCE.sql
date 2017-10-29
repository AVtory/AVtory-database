/*
 * Author  - Jason Sneddon
 * Date    - 25 October 2017
 * Course  - CS 441: Software Engineering
 * Purpose - AVtory Database: Maintenance Table 
 */

CREATE TABLE MAINTENANCE
(
	Maintenance_ID INTEGER(11) NOT NULL AUTO_INCREMENT, 
	/* === Foreign Key  === */
	/*Item_ID INTEGER(11) NOT NULL,*/
	Date_Sent DATETIME NOT NULL,
	State_of_Item VARCHAR(35) NOT NULL,
	Maintenance_Notes VARCHAR(500),
	
	CONSTRAINT Maintenance_PK PRIMARY KEY(Maintenance_ID)
);
