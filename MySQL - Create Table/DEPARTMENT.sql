/*
 * Author  - Jason Sneddon
 * Date    - 25 October 2017
 * Course  - CS 441: Software Engineering
 * Purpose - AVtory Database: Department Table
 */

CREATE TABLE DEPARTMENT
(
	Department_ID INTEGER(11) NOT NULL AUTO_INCREMENT, 
	Department_Name VARCHAR(35) NOT NULL,

	CONSTRAINT Department_PK PRIMARY KEY(Department_ID),
	CONSTRAINT Department_Name_Unique UNIQUE(Department_Name)
);
