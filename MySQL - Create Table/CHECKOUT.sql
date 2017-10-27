/*
 * Author  - Jason Sneddon
 * Date    - 25 October 2017
 * Course  - CS 441: Software Engineering
 * Purpose - AVtory Database: Checkout Table 
 */

CREATE TABLE CHECKOUT
(
	Checkout_ID INTEGER(11) NOT NULL AUTO INCREMENT, 
	/* === Foreign Keys === */
	/* Employee_ID INTEGER(11) NOT NULL , */
	/* Item_ID INTEGER(11) NOT NULL ,*/
	Date_Checked_Out DATETIME NOT NULL,
	Due_Date TIMESTAMP NOT NULL,
	Reason VARCHAR(300),
	
	CONSTRAINT Checkout_PK PRIMARY KEY(Checkout_ID)
);
