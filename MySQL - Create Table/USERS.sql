/*
 * Author   - Jason Sneddon
 * Date       - 25 October 2017
 * Course   - CS 441: Software Engineering
 * Purpose - AVtory Database 
 */

CREATE TABLE USERS
(
	User_ID INTEGER(11) NOT NULL AUTO INCREMENT, 
	Username VARCHAR(35) NOT NULL,
	Password VARCHAR(300) NOT NULL,
	
	CONSTRAINT Users_PK PRIMARY KEY(User_ID),
	CONSTRAINT Users_Username_Unique UNIQUE(Username)
);