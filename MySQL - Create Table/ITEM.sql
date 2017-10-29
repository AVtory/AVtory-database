/*
 * Author   - Jason Sneddon
 * Date       - 25 October 2017
 * Course   - CS 441: Software Engineering
 * Purpose - AVtory Database: Item Table used to represent a 
 *                   piece of equipment or inventory. 
 */

CREATE TABLE ITEM
(
	Item_ID INTEGER(11) NOT NULL AUTO_INCREMENT, 
	/* === Foreign Keys === */
	Category_ID INTEGER(11) NOT NULL, 
	Location_ID INTEGER(11) NOT NULL,
	Finance_ID INTEGER(11) NOT NULL,
	Item_Type_ID INTEGER(11) NOT NULL,
	Item_Name VARCHAR(45) NOT NULL,
	Date_Added DATETIME NOT NULL,
	Description VARCHAR(300) NOT NULL, 
	Model VARCHAR(45) NOT NULL,
	Serial VARCHAR(45) NOT NULL,
	In_Service VARCHAR(10) NOT NULL,
	
	CONSTRAINT Item_PK PRIMARY KEY(Item_ID),
	/* === Foreign Keys === */
	CONSTRAINT Item_Category_FK FOREIGN KEY(Category_ID)
		REFERENCES CATEGORY(Category_ID) ON DELETE CASCADE,
	CONSTRAINT Item_Location_FK FOREIGN KEY(Location_ID)
		REFERENCES LOCATION(Location_ID) ON DELETE CASCADE,
	CONSTRAINT Item_Finance_FK FOREIGN KEY(Finance_ID)
		REFERENCES FINANCE(Finance_ID) ON DELETE CASCADE,
	CONSTRAINT Item_Item_Type_FK FOREIGN KEY(Item_Type_ID)
		REFERENCES ITEM_TYPE(Item_Type_ID) ON DELETE CASCADE
);