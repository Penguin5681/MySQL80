CREATE TABLE EMPLOYEE(EMPLOYEE_NO NUMBER(3) PRIMARY KEY, fNAME VARCHAR2(20), lNAME VARCHAR2(20), SALARY NUMBER(8), JOINING_DATE DATE, DEPARTMENT VARCHAR(20));

DESC EMPLOYEE;

INSERT INTO EMPLOYEE(EMPLOYEE_NO, fNAME, lNAME, SALARY, JOINING_DATE, DEPARTMENT)VALUES(1, 'JOHN', 'ABRAHAM', 100000, TO_DATE('01-JAN-2013', 'DD-MON-YYYY'), 'BANKING');
INSERT INTO EMPLOYEE(EMPLOYEE_NO, fNAME, lNAME, SALARY, JOINING_DATE, DEPARTMENT)VALUES(2, 'MICHAEL', 'CLARKE', 80000, TO_DATE('01-APR-2013', 'DD-MON-YYYY'), 'INSURANCE');
INSERT INTO EMPLOYEE(EMPLOYEE_NO, fNAME, lNAME, SALARY, JOINING_DATE, DEPARTMENT)VALUES(3, 'ROY', 'THOMAS', 70000, TO_DATE('21-MAY-2013', 'DD-MON-YYYY'), 'BANKING');
INSERT INTO EMPLOYEE(EMPLOYEE_NO, fNAME, lNAME, SALARY, JOINING_DATE, DEPARTMENT)VALUES(4, 'TOM', 'JOSE', 60000, TO_DATE('08-DEC-2013', 'DD-MON-YYYY'), 'BANKING');
INSERT INTO EMPLOYEE(EMPLOYEE_NO, fNAME, lNAME, SALARY, JOINING_DATE, DEPARTMENT)VALUES(5, 'PRANAV', 'SINHA', 40000, TO_DATE('08-DEC-2013', 'DD-MON-YYYY'), 'BANKING');
INSERT INTO EMPLOYEE(EMPLOYEE_NO, fNAME, lNAME, SALARY, JOINING_DATE, DEPARTMENT)VALUES(6, 'THOMAS', 'SHELBY', 60000, TO_DATE('08-DEC-2013', 'DD-MON-YYYY'), 'BANKING');
INSERT INTO EMPLOYEE(EMPLOYEE_NO, fNAME, lNAME, SALARY, JOINING_DATE, DEPARTMENT)VALUES(7, 'MONICA', 'PANCHAL', 40000, TO_DATE('08-FEB-2013', 'DD-MON-YYYY'), 'MARKETING');
INSERT INTO EMPLOYEE(EMPLOYEE_NO, fNAME, lNAME, SALARY, JOINING_DATE, DEPARTMENT)VALUES(8, 'TANISHA', 'SHAH', 60000, TO_DATE('08-JAN-2013', 'DD-MON-YYYY'), 'SECURITY');


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
SELECT FNAME, REPLACE(FNAME, 'O', '$') FROM EMPLOYEE;                       -- replaces 'o' with '$'
SELECT FNAME || '_' || LNAME FROM EMPLOYEE;                                 -- concatenates fname and lname using '_' (Any Symbol can be used)
SELECT FNAME, TO_CHAR(JOINING_DATE, 'YYYY')"JOINING YEAR", TO_CHAR(JOINING_DATE, 'MON')"JOINING MONTH", TO_CHAR(JOINING_DATE, 'DD')"JOINING DAY" FROM EMPLOYEE;                                                            
                                                                            -- returns fname, joining date in diff cols
SELECT * FROM EMPLOYEE WHERE TO_CHAR(JOINING_DATE, 'YYYY')='2013';          -- returns employee whose joining year = 2013
SELECT * FROM EMPLOYEE WHERE TO_CHAR(JOINING_DATE, 'MON')='JAN';            -- returns employee whose joining month = january
SELECT * FROM EMPLOYEE WHERE JOINING_DATE < TO_DATE('01-JAN-2015', 'DD-MON-YYYY');    -- returns employee who joined before 1 jan 2015
SELECT * FROM EMPLOYEE WHERE JOINING_DATE > TO_DATE('01-JAN-2012', 'DD-MON-YYYY');    -- returns employee who joined after 1 jan 2012
SELECT FNAME, TO_CHAR(JOINING_DATE, 'DD/MM/YYYY HH:MI:SS') "JOINING DATE WITH TIME" FROM EMPLOYEE;   -- returns joining date and time of all employees
SELECT COUNT(FNAME)"NO. OF EMPLOYEES", DEPARTMENT FROM EMPLOYEE GROUP BY DEPARTMENT;                 -- returns no. of employee in each dept
SELECT DEPARTMENT, SUM(SALARY)"TOTAL SALARY" FROM EMPLOYEE GROUP BY DEPARTMENT;                      -- returns total salary per dept
SELECT DEPARTMENT, AVG(SALARY)"AVERAGE SALARY" FROM EMPLOYEE GROUP BY DEPARTMENT;                    -- returns avg salary per dept
SELECT DEPARTMENT FROM EMPLOYEE GROUP BY DEPARTMENT HAVING COUNT(*) > 1;                             -- returns no. of employees from a dept having count > 1
SELECT DEPARTMENT, SUM(SALARY)"TOTAL SALARY > 50K" FROM EMPLOYEE GROUP BY DEPARTMENT HAVING SUM(SALARY) > 50000;         -- returns total salary > 50000
SELECT DEPARTMENT, SUM(SALARY)"TOTAL SALARY > 50K" FROM EMPLOYEE GROUP BY DEPARTMENT HAVING SUM(SALARY) < 50000;         -- returns total salary < 50000
SELECT * FROM EMPLOYEE WHERE SALARY BETWEEN 50000 AND 80000;                                         -- returns employee details with salary between 50k and 80k
SELECT COUNT(EMPLOYEE_NO)"NO. OF EMPLOYEE",TO_CHAR(JOINING_DATE,'MON')"SAME MONTH" FROM EMPLOYEE GROUP BY TO_CHAR(JOINING_DATE,'MON') HAVING COUNT(EMPLOYEE_NO) > 1;      -- returns no. of emp with same joining month
SELECT COUNT(EMPLOYEE_NO)"NO. OF EMPLOYEE",TO_CHAR(JOINING_DATE,'YYYY')"SAME YEAR" FROM EMPLOYEE GROUP BY TO_CHAR(JOINING_DATE,'YYYY') HAVING COUNT(EMPLOYEE_NO) > 1;     -- returns no. of emp with same joining year
SELECT SUM(SALARY)"TOTAL SALARY", TO_CHAR(JOINING_DATE,'MON')"SAME MONTH" FROM EMPLOYEE GROUP BY TO_CHAR(JOINING_DATE,'MON') HAVING COUNT(EMPLOYEE_NO) > 1;               -- returns total salary of emp having same joining month.
SELECT SUM(SALARY)"TOTAL SALARY > 50000", TO_CHAR(JOINING_DATE,'MON')"SAME MONTH" FROM EMPLOYEE GROUP BY TO_CHAR(JOINING_DATE,'MON') HAVING COUNT(EMPLOYEE_NO) > 1 AND SUM(SALARY) > 50000;               
                                                                                                                                                  -- returns total salary of emp having same joining month and total salary > 50k.


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

SELECT FNAME, INC_DATE-JOINING_DATE FROM EMPLOYEE E INNER JOIN INCENTIVES I ON E.EMPLOYEE_NO = I.EMP_REF_ID;  -- RETURNS THE DIFF OF INC_DATE AND JOINING_DATE
SELECT * FROM EMPLOYEE WHERE EXISTS(SELECT * FROM INCENTIVES)
SELECT FNAME "RECEIVED THEIR INCENTIVES" FROM EMPLOYEE WHERE EMPLOYEE_NO IN (SELECT EMP_REF_ID FROM INCENTIVES);
SELECT FNAME "INCENTIVE > 50000" FROM EMPLOYEE WHERE EMPLOYEE_NO IN (SELECT EMP_REF_ID FROM INCENTIVES WHERE AMT < 5000);
UPDATE INCENTIVES SET AMT = 5500 WHERE EMP_REF_ID = (SELECT EMPLOYEE_NO FROM EMPLOYEE WHERE FNAME = 'ROY');
SELECT FNAME, AMT FROM EMPLOYEE E INNER JOIN INCENTIVES I ON E.EMPLOYEE_NO = I.EMP_REF_ID;
SELECT FNAME, AMT FROM EMPLOYEE E INNER JOIN INCENTIVES I ON E.EMPLOYEE_NO = I.EMP_REF_ID AND AMT > 3000;
SELECT FNAME, AMT FROM EMPLOYEE E INNER JOIN INCENTIVES I ON E.EMPLOYEE_NO = I.EMP_REF_ID AND AMT < 4000;
SELECT FNAME, AMT FROM EMPLOYEE E LEFT JOIN INCENTIVES I ON E.EMPLOYEE_NO = I.EMP_REF_ID;
