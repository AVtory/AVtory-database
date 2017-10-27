/*
 * Author  - Jason Sneddon
 * Date    - 25 October 2017
 * Course  - CS 441: Software Engineering
 * Purpose - AVtory Database: Item Table used to represent a 
 *           piece of equipment or inventory. 
 */

CREATE TABLE ITEM
(
	Item_ID INTEGER(11) NOT NULL AUTO INCREMENT, 
	/* === Foreign Keys === */
	/*Category_ID INTEGER(11) NOT NULL, */
	/*Location_ID INTEGER(11) NOT NULL, */
	/*Finance_ID INTEGER(11) NOT NULL, */
	Item_Name VARCHAR(45) NOT NULL,
	Date_Added DATETIME NOT NULL,
	Description VARCHAR(300) NOT NULL, 
	Model VARCHAR(45) NOT NULL,
	Serial VARCHAR(45) NOT NULL,
	In_Service VARCHAR(10) NOT NULL,
	
	CONSTRAINT Item_PK PRIMARY KEY(Item_ID)
);
