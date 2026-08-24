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


-- ============================================================
-- 1. WAQTD name of the employee along with their annual salary.
-- ============================================================
SELECT ENAME , SAL, SAL*12 AS ANNUALSALARY
FROM EMP;


-- ============================================================
-- 2. WAQTD ename and job for all the employees with their half-term salary.
-- ============================================================
SELECT ENAME, SAL, SAL*6  HaltTermSal
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


SELECT * FROM EMP;