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
INSERT INTO EMPLOYEE1(EMP_NO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPT_NO)VALUES(7698,'BLAKE','MANAGER',7839, TO_DATE('01-05-1981','DD/MM/YYYY'),2850,'', 30);
INSERT INTO EMPLOYEE1(EMP_NO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPT_NO)VALUES(7782,'CLERK','MANAGER',7839, TO_DATE('09-06-1981','DD/MM/YYYY'),2450,'', 10);
INSERT INTO EMPLOYEE1(EMP_NO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPT_NO)VALUES(7566,'JONES','MANAGER',7839, TO_DATE('02-04-1981','DD/MM/YYYY'),2975,'', 20);
INSERT INTO EMPLOYEE1(EMP_NO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPT_NO)VALUES(7788,'SCOTT','ANALYST',7566, TO_DATE('13-07-1987','DD/MM/YYYY'),3000,'', 20);
INSERT INTO EMPLOYEE1(EMP_NO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPT_NO)VALUES(7902,'FORD','ANALYST',7566, TO_DATE('03-12-1981','DD/MM/YYYY'),3000,'', 20);
INSERT INTO EMPLOYEE1(EMP_NO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPT_NO)VALUES(7369,'SMITH','CLERK',7902, TO_DATE('17-12-1980','DD/MM/YYYY'),800,'', 20);
INSERT INTO EMPLOYEE1(EMP_NO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPT_NO)VALUES(7499,'ALLEN','SALESMAN',7698, TO_DATE('20-02-1981','DD/MM/YYYY'),1600,300, 30);
INSERT INTO EMPLOYEE1(EMP_NO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPT_NO)VALUES(7521,'WARD','SALESMAN',7698, TO_DATE('22-02-1981','DD/MM/YYYY'),1250,500, 30);
INSERT INTO EMPLOYEE1(EMP_NO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPT_NO)VALUES(7654,'MARTIN','SALESMAN',7698, TO_DATE('28-09-1981','DD/MM/YYYY'),1250,1400, 10);
INSERT INTO EMPLOYEE1(EMP_NO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPT_NO)VALUES(7844,'TUMOR','SALESMAN','', TO_DATE('08-09-1981','DD/MM/YYYY'),1500,'', 30);
INSERT INTO EMPLOYEE1(EMP_NO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPT_NO)VALUES(7856,'ADAMS','CLERK','', TO_DATE('13-07-1987','DD/MM/YYYY'),1100,'', 20);
INSERT INTO EMPLOYEE1(EMP_NO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPT_NO)VALUES(7900,'JAMES','CLERK','', TO_DATE('03-12-1981','DD/MM/YYYY'),950,'', 30);
INSERT INTO EMPLOYEE1(EMP_NO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPT_NO)VALUES(7934,'MILLER','CLERK','', TO_DATE('23-01-1981','DD/MM/YYYY'),1300,'', 10);

SELECT * FROM EMPLOYEE1;

SELECT * FROM EMPLOYEE1 WHERE DEPT_NO = 10 OR DEPT_NO = 30;
SELECT * FROM EMPLOYEE1 WHERE DEPT_NO = 30;
