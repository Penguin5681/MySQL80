CREATE TABLE EMPLOYEE(EMPLOYEE_NO NUMBER(3) PRIMARY KEY, fNAME VARCHAR2(20), lNAME VARCHAR2(20), SALARY NUMBER(8), JOINING_DATE DATE, DEPARTMENT VARCHAR(20));

DESC EMPLOYEE;

INSERT INTO EMPLOYEE(EMPLOYEE_NO, fNAME, lNAME, SALARY, JOINING_DATE, DEPARTMENT)VALUES(1, 'JOHN', 'ABRAHAM', 100000, TO_DATE('01-JAN-2013', 'DD-MON-YYYY'), 'BANKING');
INSERT INTO EMPLOYEE(EMPLOYEE_NO, fNAME, lNAME, SALARY, JOINING_DATE, DEPARTMENT)VALUES(2, 'MICHAEL', 'CLARKE', 80000, TO_DATE('01-APR-2013', 'DD-MON-YYYY'), 'INSURANCE');
INSERT INTO EMPLOYEE(EMPLOYEE_NO, fNAME, lNAME, SALARY, JOINING_DATE, DEPARTMENT)VALUES(3, 'ROY', 'THOMAS', 70000, TO_DATE('21-MAY-2013', 'DD-MON-YYYY'), 'BANKING');
INSERT INTO EMPLOYEE(EMPLOYEE_NO, fNAME, lNAME, SALARY, JOINING_DATE, DEPARTMENT)VALUES(4, 'TOM', 'JOSE', 60000, TO_DATE('08-DEC-2013', 'DD-MON-YYYY'), 'BANKING');
INSERT INTO EMPLOYEE(EMPLOYEE_NO, fNAME, lNAME, SALARY, JOINING_DATE, DEPARTMENT)VALUES(5, 'PRANAV', 'SINHA', 40000, TO_DATE('08-DEC-2013', 'DD-MON-YYYY'), 'BANKING');
INSERT INTO EMPLOYEE(EMPLOYEE_NO, fNAME, lNAME, SALARY, JOINING_DATE, DEPARTMENT)VALUES(6, 'THOMAS', 'SHELBY', 60000, TO_DATE('08-DEC-2013', 'DD-MON-YYYY'), 'BANKING');
INSERT INTO EMPLOYEE(EMPLOYEE_NO, fNAME, lNAME, SALARY, JOINING_DATE, DEPARTMENT)VALUES(7, 'MONICA', 'PANCHAL', 40000, TO_DATE('08-FEB-2013', 'DD-MON-YYYY'), 'MARKETING');

SELECT * FROM EMPLOYEE; 

SELECT * FROM EMPLOYEE ORDER BY FNAME ASC;                       -- Arranges the first names into ascending order
SELECT * FROM EMPLOYEE ORDER BY FNAME DESC;                      -- Arranges the first names into descending order
SELECT * FROM EMPLOYEE ORDER BY FNAME ASC, SALARY DESC;          -- Arranges the first names into ASCENDING order AND salary into descending
SELECT * FROM EMPLOYEE WHERE FNAME='JOHN';                       -- Gets the details of the employee whose fname is John
SELECT * FROM EMPLOYEE WHERE FNAME IN('JOHN', 'ROY');            -- Gets the details of the employee whose fname is John AND ROY
SELECT * FROM EMPLOYEE WHERE FNAME LIKE 'J%';                    -- Gets the details of the employee whose name starts with 'J'
SELECT * FROM EMPLOYEE WHERE FNAME LIKE '%N';                    -- Gets the details of the employee whose name ENDS with 'N'
SELECT * FROM EMPLOYEE WHERE FNAME LIKE '%___N';                 -- gets the details of the employee whose name ends with 'N' and has 4 letters
SELECT * FROM EMPLOYEE WHERE FNAME LIKE 'J___%';                 -- gets the details of the employee whose name starts with 'J' and has 4 letters
SELECT * FROM EMPLOYEE WHERE SALARY>60000;                       -- gets the deatils of the employee whose salary is more than 60000
SELECT * FROM EMPLOYEE WHERE SALARY<80000;                       -- gets the deatils of the employee whose salary is less than 80000
SELECT * FROM EMPLOYEE WHERE SALARY BETWEEN 50000 AND 80000;     -- gets the deatils of the employee whose salary is BETWEEN 50K AND 80K
SELECT INSTR(FNAME, 'J')"POSITION" FROM EMPLOYEE WHERE FNAME='JOHN';        -- returns the position of 'J'
SELECT * FROM EMPLOYEE WHERE SALARY = (SELECT MIN(SALARY) FROM EMPLOYEE);   -- returns the details of employee with least salary
SELECT * FROM EMPLOYEE WHERE SALARY = (SELECT MAX(SALARY) FROM EMPLOYEE);   -- returns the details of employee with maximum salary
SELECT COUNT(DISTINCT(DEPARTMENT)) "NO. OF DEPT" FROM EMPLOYEE;             -- returns the count of distinct dept
SELECT AVG(SALARY) "AVERAGE SALARY" FROM EMPLOYEE;                          -- returns the average salary
SELECT SUBSTR(FNAME, 1, 3) FROM EMPLOYEE;                                   -- returns the first three letters of every name from FNAME 
SELECT LTRIM(FNAME, ' ') FROM EMPLOYEE;                                     -- returns the first name while trimming out the white spaces from left
SELECT RTRIM(FNAME, ' ') FROM EMPLOYEE;                                     -- returns the first name while trimming out the white spaces from right
SELECT LENGTH(FNAME)"LENGTH", FNAME FROM EMPLOYEE;                          -- returns the length of different first names from employee

CREATE TABLE INCENTIVES(EMP_REF_ID NUMBER(3), INC_DATE DATE, AMT NUMBER(5), FOREIGN KEY (EMP_REF_ID) REFERENCES EMPLOYEE);

DESC INCENTIVES;

INSERT INTO INCENTIVES(EMP_REF_ID, INC_DATE, AMT)VALUES(1, TO_DATE('01-FEB-2013', 'DD-MON-YY'), 5000);
INSERT INTO INCENTIVES(EMP_REF_ID, INC_DATE, AMT)VALUES(2, TO_DATE('01-DEC-2013', 'DD-MON-YY'), 3000);
INSERT INTO INCENTIVES(EMP_REF_ID, INC_DATE, AMT)VALUES(3, TO_DATE('01-MAR-2013', 'DD-MON-YY'), 4000);
INSERT INTO INCENTIVES(EMP_REF_ID, INC_DATE, AMT)VALUES(4, TO_DATE('21-MAR-2013', 'DD-MON-YY'), 4500);

SELECT * FROM INCENTIVES;

SELECT fNAME, lNAME FROM EMPLOYEE;

SELECT fNAME "EMPLOYEE_NAME" FROM EMPLOYEE;

SELECT LOWER(fNAME) FROM EMPLOYEE;

SELECT UPPER(fNAME) FROM EMPLOYEE;

SELECT DISTINCT DEPARTMENT FROM EMPLOYEE;
