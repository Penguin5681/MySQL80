CREATE TABLE DEPARTMENT(DEPT_NO NUMBER(3) PRIMARY KEY, DNAME VARCHAR2(15), LOC VARCHAR2(15));

DESC DEPARTMENT;

INSERT INTO DEPARTMENT(DEPT_NO, DNAME, LOC)VALUES(10, 'ACCOUNTING', 'NEW YORK');
INSERT INTO DEPARTMENT(DEPT_NO, DNAME, LOC)VALUES(20, 'RESEARCH', 'DALLAS');
INSERT INTO DEPARTMENT(DEPT_NO, DNAME, LOC)VALUES(30, 'SALES', 'CHICAGO');
INSERT INTO DEPARTMENT(DEPT_NO, DNAME, LOC)VALUES(40, 'OPERATIONS', 'BOSTON');

SELECT * FROM DEPARTMENT;

CREATE TABLE EMPLOYEE1(EMP_NO NUMBER(5) PRIMARY KEY, ENAME VARCHAR2(10), MGR NUMBER(5), HIREDATE DATE, SAL NUMBER(5), COMM NUMBER(4), DEPT_NO NUMBER(3) REFERENCES DEPARTMENT);
ALTER TABLE EMPLOYEE1 ADD(JOB VARCHAR2(20));

DESC EMPLOYEE1;

INSERT INTO EMPLOYEE1(EMP_NO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPT_NO)VALUES(7839,'KING','PRESIDENT','', TO_DATE('17-11-1981','DD/MM/YYYY'),5000,'', 10);
SELECT * FROM EMPLOYEE1;
