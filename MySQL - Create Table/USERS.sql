/*
 * Author  - Jason Sneddon
 * Date    - 25 October 2017
 * Course  - CS 441: Software Engineering
 * Purpose - AVtory Database 
 */

CREATE TABLE USERS
(
	User_ID INTEGER(11) NOT NULL AUTO_INCREMENT,
	Username VARCHAR(35) NOT NULL,
	Password_Hash CHAR(88) CHARACTER SET latin1,
	Salt CHAR(43) CHARACTER SET latin1 NOT NULL,
	Work_Factor TINYINT NOT NULL DEFAULT 15,

	CONSTRAINT Users_PK PRIMARY KEY(User_ID),
	CONSTRAINT Users_Username_Unique UNIQUE(Username)
);
