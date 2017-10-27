/*
 * Author  - Jason Sneddon
 * Date    - 25 October 2017
 * Course  - CS 441: Software Engineering
 * Purpose - AVtory Database: Finance Table 
 */

CREATE TABLE FINANCE
(
	Finance_ID INTEGER(11) NOT NULL AUTO INCREMENT, 
	Price DECIMAL(10,2),
	Depreciation DECIMAL(10,2),
	
	CONSTRAINT Finance_PK PRIMARY KEY(Finance_ID)
);
