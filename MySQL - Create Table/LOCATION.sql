/*
 * Author  - Jason Sneddon
 * Date    - 25 October 2017
 * Course  - CS 441: Software Engineering
 * Purpose - AVtory Database: Location Table used to indentify a
 *           particular area where a piece of equipment is stored 
 *           within a department.  
 */

CREATE TABLE LOCATION
(
	Location_ID INTEGER(11) NOT NULL AUTO_INCREMENT, 
	/* === Foreign Key  === */
	Department_ID INTEGER(11) NOT NULL,
	Location_Name VARCHAR(300) NOT NULL,
	
	CONSTRAINT Location_PK PRIMARY KEY(Location_ID),
	/* === Foreign Keys === */
	CONSTRAINT Location_Department_FK FOREIGN KEY(Department_ID)
		REFERENCES DEPARTMENT(Department_ID) ON DELETE CASCADE
);
