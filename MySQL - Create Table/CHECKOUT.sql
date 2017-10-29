/*
 * Author  - Jason Sneddon
 * Date    - 25 October 2017
 * Course  - CS 441: Software Engineering
 * Purpose - AVtory Database: Checkout Table 
 */

CREATE TABLE CHECKOUT
(
	Checkout_ID INTEGER(11) NOT NULL AUTO_INCREMENT, 
	/* === Foreign Keys === */
	Employee_ID INTEGER(11) NOT NULL ,
	Item_ID INTEGER(11) NOT NULL ,
	Date_Checked_Out DATETIME NOT NULL,
	Due_Date TIMESTAMP NOT NULL,
	Reason VARCHAR(300),
	
	CONSTRAINT Checkout_PK PRIMARY KEY(Checkout_ID),
	/* === Foreign Keys === */
	CONSTRAINT Checkout_Employee_FK FOREIGN KEY(Employee_ID)
		REFERENCES EMPLOYEE(Employee_ID) ON DELETE CASCADE,
	CONSTRAINT Checkout_Item_FK FOREIGN KEY(Item_ID)
		REFERENCES ITEM(Item_ID) ON DELETE CASCADE
);