/*
 * Author   - Jason Sneddon
 * Date       - 25 October 2017
 * Course   - CS 441: Software Engineering
 * Purpose - AVtory Database: Illustrates the Many-to-Many 
 *                    Relationship between EMPLOYEE & FINANCE
 */

CREATE TABLE EMPLOYEE_MANAGE_FINANCE
(
	/* Both are Primary and Foreign Keys */
	Employee_ID INTEGER(11) NOT NULL, 
	Finance_ID INTEGER(11) NOT NULL,
	
	CONSTRAINT Employee_Manage_Finance_PK PRIMARY KEY(Employee_ID, Finance_ID)
	
	/* === Foreign Keys === */
	/*
	CONSTRAINT Employee_Manage_Finance_Employee_FK FOREIGN KEY(Employee_ID)
		REFERENCES EMPLOYEE(Employee_ID) ON DELETE CASCADE, 
	CONSTRAINT Employee_Manage_Finance_Finance_FK FOREIGN KEY(Finance_ID)
		REFERENCES FINANCE(Finance_ID) ON DELETE CASCADE,
	*/
);