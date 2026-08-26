CREATE DATABASE COMPANY;
USE COMPANY;

-- ============================================================
-- EMPLOYEE TABLE
-- ============================================================

CREATE TABLE EMP (
    EMPNO     INT PRIMARY KEY,
    ENAME     VARCHAR(20),
    JOB       VARCHAR(20),
    MGR       INT,
    HIREDATE  DATE,
    SAL       INT,
    COMM      INT,
    DEPTNO    INT
);

-- ============================================================
-- INSERT 20 EMPLOYEES
-- ============================================================

INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) VALUES
(1001, 'SMITH',    'CLERK',        7902, '2022-12-17', 800,  NULL, 20),
(1002, 'ALLEN',    'SALESMAN',     7698, '2023-02-20', 1600, 300,  30),
(1003, 'WARD',     'SALESMAN',     7698, '2023-02-22', 1250, 500,  30),
(1004, 'JONES',    'MANAGER',      7839, '2021-04-02', 2975, NULL, 20),
(1005, 'MARTIN',   'SALESMAN',     7698, '2022-09-28', 1250, 1400, 30),
(1006, 'BLAKE',    'MANAGER',      7839, '2021-05-01', 2850, NULL, 30),
(1007, 'CLARK',    'MANAGER',      7839, '2020-06-09', 2450, NULL, 10),
(1008, 'SCOTT',    'ANALYST',      7566, '2023-04-19', 3000, NULL, 20),
(1009, 'KING',     'PRESIDENT',    NULL, '2019-11-17', 5000, NULL, 10),
(1010, 'TURNER',   'SALESMAN',     7698, '2023-09-08', 1500, 0,    30),
(1011, 'ADAMS',    'CLERK',        7788, '2024-05-23', 1100, NULL, 20),
(1012, 'JAMES',    'CLERK',        7698, '2022-12-03', 950,  NULL, 30),
(1013, 'FORD',     'ANALYST',      7566, '2021-12-03', 3000, NULL, 20),
(1014, 'MILLER',   'CLERK',        7782, '2023-01-23', 1300, NULL, 10),
(1015, 'WILSON',   'DEVELOPER',    7566, '2024-03-15', 3500, NULL, 20),
(1016, 'DAVIS',    'DEVELOPER',    7566, '2023-07-10', 3800, NULL, 20),
(1017, 'TAYLOR',   'HR',           7839, '2022-08-12', 2700, NULL, 10),
(1018, 'ANDERSON', 'TESTER',       7566, '2023-09-25', 2800, NULL, 20),
(1019, 'THOMAS',   'SUPPORT',      7698, '2024-01-18', 2200, 200,  30),
(1020, 'JACKSON',  'DATA ANALYST', 7566, '2024-02-05', 3200, NULL, 20);

-- =================ASSIGNMENT NO. 1===========================

-- ============================================================
-- 1. WAQTD name of the employee along with their annual salary.
-- ============================================================
SELECT ENAME , SAL, SAL*12 AS ANNUALSALARY
FROM EMP;


-- ============================================================
-- 2. WAQTD ename and job for all the employees with their half-term salary.
-- ============================================================
SELECT ENAME, SAL, SAL*6  HalfTermSal
FROM EMP;

-- ============================================================
-- 3. WAQTD all the details of the employees along with an annual bonus of 2000. 
-- ============================================================
SELECT * , SAL*12+2000 AS SalWiBou
FROM EMP;
-- ============================================================
-- 4. WAQTD name, salary and salary with a hike of 10%.
-- ============================================================
SELECT ENAME, SAL, SAL+ SAL*10/100 AS SalWiHike
FROM EMP;

-- ============================================================
-- 5. WAQTD name and salary with deduction of 25%.
-- ============================================================
SELECT ENAME, SAL, SAL - SAL*25/100 AS SalDeduct
FROM EMP;

-- ============================================================
-- 6. WAQTD name and salary with monthly hike of 50.
-- ============================================================
SELECT ENAME, SAL, SAL+ 50 AS SalWiHike
FROM EMP;
-- ============================================================
-- 7. WAQTD name and annual salary with deduction of 10%.
-- ============================================================
SELECT ENAME, SAL, SAL*12 - SAL*10/100 AS AnSalDeduct
FROM EMP;

-- ============================================================
-- 8. WAQTD total salary given to each employee (SAL + COMM).
-- ============================================================
SELECT ENAME, SAL, SAL + COMM AS SalWiComm
FROM EMP;
-- ============================================================
-- 9. WAQTD details of all the employees along with annual salary.
-- ============================================================
SELECT *, SAL*12 AS AnnualSal
FROM EMP;
-- ============================================================
-- 10. WAQTD name and designation along with 100 penalty in salary.
-- ============================================================
SELECT ENAME, JOB, SAL, SAL -100 AS SalWiPanalty
FROM EMP;

-- ============================================================
-- 11. WAQTD name of employee who is earning more than 500.
-- ============================================================

SELECT ENAME
FROM EMP
WHERE SAL=5000;

SELECT ENAME
FROM EMP
WHERE ENAME='SMITH';

-- ============================================================
-- 11. WAQTD DETAILS OF THE EMP WHO IS WORKING AS ANALYST
-- ============================================================

SELECT *
FROM EMP
WHERE JOB='ANALYST';

SELECT ENAME
FROM EMP
WHERE HIREDATE='2023-04-19';

-- ======================ASSIGNMENT NO 2===========================

-- =========================== QUESTION 1==========================
SELECT ENAME, SAL*12 AS ANNUALSAL
FROM EMP
WHERE ENAME='SMITH';

-- =========================== QUESTION 2 ==========================
SELECT ENAME
FROM emp
WHERE JOB='CLERK';

-- =========================== QUESTION 3 ==========================
SELECT ENAME
FROM EMP
WHERE JOB='SALESMAN';

-- =========================== QUESTION 4 ==========================
select * 
FROM EMP
WHERE SAL>2000;
-- =========================== QUESTION 5 ==========================
SELECT *
FROM EMP
WHERE ENAME='JONES';
-- =========================== QUESTION 6 ==========================
SELECT *
FROM EMP
WHERE HIREDATE>1981-01-01;
-- =========================== QUESTION 7 ==========================
SELECT ENAME,SAL, SAL*12 AS ANNUALSAL
FROM EMP
WHERE SAL*12>12000;
-- =========================== QUESTION 8 ==========================
SELECT EMPNO
FROM EMP
WHERE DEPTNO=30;
-- =========================== QUESTION 9 ==========================
SELECT ENAME, HIREDATE
FROM EMP
WHERE HIREDATE<1981-01-01;
-- =========================== QUESTION 10 ==========================
SELECT *
FROM EMP
WHERE JOB='MANAGER';

-- =========================== QUESTION 11 ==========================
SELECT ENAME, SAL
FROM EMP
WHERE COMM=1400;

-- =========================== QUESTION 12 ==========================
SELECT *
FROM EMP
WHERE COMM>SAL;

-- =========================== QUESTION 13 ==========================
SELECT EMPNO
FROM EMP
WHERE HIREDATE<'2022-01-01';

-- =========================== QUESTION 14 ==========================
SELECT *
FROM EMP
WHERE JOB='ANALYST';

-- =========================== QUESTION 15 ==========================
SELECT *
FROM EMP
WHERE SAL>2000;

-- ================CONCETATION=============
SELECT CONCAT('Mr',' ', ename) AS full_name 
FROM emp;

-- ===================AND OPERATOR=============
select ename
from emp
where job='CLERK' AND DEPTNO=20;

SELECT *
FROM EMP
WHERE JOB='MANAGER' AND SAL>2000;

-- ===================OR OPERATOR=============
Select ename
from emp
where DEPTNO=10 OR DEPTNO=20;

SELECT *
FROM EMP
WHERE JOB='MANAGER' OR JOB='ANALYST';

-- ===================NOT OPERATOR==========
SELECT *
FROM EMP
WHERE not DEPTNO=10;

SELECT *
FROM EMP
WHERE NOT JOB='SALESMAN';

-- ASSIGNMENT ON LOGICAL OPERATORS

-- 1. WAQTD details of the employees working as CLERK and earning less than 1500.
SELECT *
FROM EMP
WHERE JOB='CLERK' AND SAL>1500;

-- 2. WAQTD name and hiredate of the employees working as MANAGER in DEPT 30.
SELECT NAME, HIREDATE
FROM EMP
WHERE JOB='MANAGER' AND DEPTNO=30;

-- 3. WAQTD details of the employees along with annual salary if they are working in DEPT 30 as SALESMAN and their annual salary has to be greater than 14000.
SELECT * , SAL*12 ANNUALSAL
FROM EMP
WHERE JOB='SALESMAN' AND SAL*12>14000;

-- 4. WAQTD all the details of the employees working in DEPT 30 OR as ANALYST.
SELECT *
FROM EMP
WHERE DEPTNO=30 OR JOB='ANALYST';

-- 5. WAQTD names of the employees whose salary is less than 1100 and their designation is CLERK.
SELECT ENAME
FROM EMP
WHERE SAL>1100 AND JOB='CLERK';

-- 6. WAQTD name, sal, annual sal and deptno if deptno is 20, earning more than 1100 and annual salary exceeds 12000.
SELECT ENAME, SAL, SAL*12 AS ANNUALSAL, DEPTNO
FROM EMP
WHERE DEPTNO=20 AND SAL>1100 AND SAL*12>12000;

-- 7. WAQTD empno and names of the employees working as MANAGER in DEPT 20.
SELECT EMPNO, ENAMES
FROM EMP
WHERE JOB='MANAGER' AND DEPTNO=20;

-- 8. WAQTD details of employees working in DEPT 20 OR 30.
SELECT *
FROM EMP
WHERE DEPTNO=20 OR DEPTNO=30;


-- 9. WAQTD details of employees working as ANALYST in DEPT 10.
SELECT *
FROM EMP
WHERE JOB='ANALYST' AND DEPTNO=10;


-- 10. WAQTD details of employees working as PRESIDENT with salary of 4000.
SELECT *
FROM EMP
WHERE JOB='PRESIDENT' AND SAL=4000;


-- 11. WAQTD names and deptno of employees working as CLERK in DEPT 10 OR 20.
SELECT ENAME, DEPTNO
FROM EMP
WHERE JOB='CLERK' AND (DEPTNO=10 OR DEPTNO=20);


-- 12. WAQTD details of employees working as CLERK OR MANAGER in DEPT 10.
SELECT *
FROM EMP
WHERE DEPTNO=10 AND (JOB='CLERK' OR JOB='MANAGER');


-- 13. WAQTD names of employees working in DEPT 10, 20, 30, 40.
SELECT ENAME
FROM EMP
WHERE DEPTNO=10 OR DEPTNO=20 OR DEPTNO=30 OR DEPTNO=40;


-- 14. WAQTD details of employees with EMPNO 7902, 7839.
SELECT *
FROM EMP
WHERE EMPNO=7902 OR EMPNO=7839;


-- 15. WAQTD details of employees working as MANAGER OR SALESMAN OR CLERK.
SELECT *
FROM EMP
WHERE JOB='MANAGER' OR JOB='SALESMAN' OR JOB='CLERK';


-- 16. WAQTD names of employees hired AFTER 81 AND BEFORE 87.
SELECT ENAME
FROM EMP
WHERE HIREDATE > '31-DEC-1981' AND HIREDATE < '01-JAN-1987';


-- 17. WAQTD details of employees earning more than 1250 but less than 3000.
SELECT *
FROM EMP
WHERE SAL>1250 AND SAL<3000;


-- 18. WAQTD names of employees hired AFTER 81 into DEPT 10 OR 30.
SELECT ENAME
FROM EMP
WHERE HIREDATE > '31-DEC-1981' AND (DEPTNO=10 OR DEPTNO=30);


-- 19. WAQTD names of employees along with annual salary for the employees working as MANAGER OR CLERK into DEPT 10 OR 30.
SELECT ENAME, SAL*12 AS ANNUALSAL
FROM EMP
WHERE (JOB='MANAGER' OR JOB='CLERK') AND (DEPTNO=10 OR DEPTNO=30);


-- 20. WAQTD all the details along with annual salary if SAL is between 1000 AND 4000 AND annual salary is more than 15000.
SELECT *, SAL*12 AS ANNUALSAL
FROM EMP
WHERE SAL>=1000 AND SAL<=4000 AND SAL*12>15000;

SELECT * FROM EMP;