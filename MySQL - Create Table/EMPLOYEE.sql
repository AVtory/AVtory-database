/*
 * Author  - Jason Sneddon
 * Date    - 25 October 2017
 * Course  - CS 441: Software Engineering
 * Purpose - AVtory Database - Employee Table
 */

CREATE TABLE EMPLOYEE
(
	Employee_ID INTEGER(11) NOT NULL AUTO_INCREMENT, 
	/* === Foreign Key  === */
	/* User_ID INTEGER(11) NOT NULL, */
	First_Name VARCHAR(35) NOT NULL,
	Last_Name VARCHAR(35) NOT NULL,
	Email VARCHAR(75) NOT NULL,
	Phone_Number VARCHAR(12) NOT NULL,
	Is_Admin TINYINT NOT NULL,
	Role VARCHAR(25), 
	
	CONSTRAINT Employee_PK PRIMARY KEY(Employee_ID),
	CONSTRAINT Employee_Email_Unique UNIQUE(Email)
);
