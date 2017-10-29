/*
 * Author  - Jason Sneddon
 * Date    - 25 October 2017
 * Course  - CS 441: Software Engineering
 * Purpose - AVtory Database: Item_Type Table
 * Example - Within a Category, such as Audio, there are 
 *           many TYPES of items, such as Microphones, 
 *           Receiver, Mixers, Speakers, etc.  
 */

CREATE TABLE ITEM_TYPE
(
	Item_Type_ID INTEGER(11) NOT NULL AUTO_INCREMENT, 
	/* === Foreign Key === */
	Category_ID INTEGER(11) NOT NULL,
	Item_Type_Name VARCHAR(45) NOT NULL,
	
	CONSTRAINT Item_Type_PK PRIMARY KEY(Item_Type_ID),
		/* === Foreign Key === */
	CONSTRAINT Item_Type_Category_FK FOREIGN KEY(Category_ID)
		REFERENCES CATEGORY(Category_ID) ON DELETE CASCADE 
);