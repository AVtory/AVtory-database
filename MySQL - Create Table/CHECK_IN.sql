/*
 * Author  - Jason Sneddon
 * Date    - 25 October 2017
 * Course  - CS 441: Software Engineering
 * Purpose - AVtory Database: Check_In Table 
 */

CREATE TABLE CHECK_IN
(
	Check_In_ID INTEGER(11) NOT NULL AUTO_INCREMENT, 
	/* === Foreign Keys === */
	Employee_ID INTEGER(11) NOT NULL,
	Item_ID INTEGER(11) NOT NULL,
	Date_Checked_In TIMESTAMP NOT NULL,
	
	CONSTRAINT Check_In_PK PRIMARY KEY(Check_In_ID),
	/* === Foreign Keys === */
	CONSTRAINT Check_In_Employee_FK FOREIGN KEY(Employee_ID)
		REFERENCES EMPLOYEE(Employee_ID) ON DELETE CASCADE,
	CONSTRAINT Check_In_Item_FK FOREIGN KEY(Item_ID)
		REFERENCES ITEM(Item_ID) ON DELETE CASCADE
);