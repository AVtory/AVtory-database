/*
 * Author   - Jason Sneddon
 * Date     - 25 October 2017
 * Course   - CS 441: Software Engineering
 * Purpose  - AVtory Database: Category Table
 * Examples - Audio, Video, Lighting
 */

CREATE TABLE CATEGORY
(
	Category_ID INTEGER(11) NOT NULL AUTO INCREMENT, 
	Category_Name VARCHAR(35) NOT NULL,
	
	CONSTRAINT Category_PK PRIMARY KEY(Category_ID),
	CONSTRAINT Category_Name_Unique UNIQUE(Category_Name)
);
