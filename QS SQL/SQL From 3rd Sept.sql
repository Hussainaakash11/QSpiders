use depett;

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
(1014, 'MILLER',   'CLERK',        7782, '2023-01-23', 1300, NULL, 10);

select * from emp;

-- =============================================
-- 				GROUP BY
-- =============================================

select deptno, count(*)
from emp
group by deptno;

select job, count(*)
from emp
group by job;

-- ============================
--           SUB QUERY
-- ============================

-- Q1
select ename 
from emp
where sal> (select sal
from emp
where ename='adams');

-- Q2
Select ename, sal
from emp
where sal< (select sal from emp where ename='king');

-- Q3
select ename,deptno
from emp
where deptno=(select deptno from emp where ename='jones');

-- Q4
select ename, job
from emp
where job=(select job from emp where ename='james');

-- Q5 
select empno, ename, sal*12 as annualsal
from emp
where sal*12>(select sal*12 from emp where ename='ward');

-- Q6 
select ename, hiredate
from emp
where hiredate<(select hiredate from emp where ename='scott');

-- Q7


-- =================================
-- DEPARTMENT TABLE
-- =================================

CREATE TABLE dept (
    DEPTNO     INT PRIMARY KEY,
    DNAME     VARCHAR(20),
    LOC       VARCHAR(20)
);

INSERT INTO DEPT (DEPTNO, DNAME, LOC) VALUES
(10, "ACCOUNTING", "NEW YORK"),
(20, "RESEARCH", "DALLAS"),
(30, "SALES", "CHICAGO"),
(40, "OPERATIONS", "BOSTON");

SELECT * FROM DEPT;

-- Q1
select dname
from dept
where deptno = (select deptno from emp where ename='smith');

-- Q2
select dname, loc 
from dept
where deptno =(select deptno from emp where ename='king');

-- Q3
select loc 
from dept
where deptno=(select deptno from emp where empno=7902);

-- Q4 
select dname, loc, deptno
from dept
where deptno in (select deptno from emp where ename like '%R');

-- Q5 
select dname
from dept
where deptno=(select deptno from emp where job='president');

-- Q6 
select ename
from emp 
where deptno=(select deptno from dept where dname='Accounting');

-- ==========================================
--      CASE 1 & 2
-- ==========================================

-- Q31
select ename 
from emp
where deptno in (select deptno from dept where dname='accounting');

-- Q32 
SELECT *
FROM EMP
WHERE JOB = 'MANAGER' AND DEPTNO IN (SELECT DEPTNO FROM DEPT WHERE LOC='CHICAGO');

-- Q33
SELECT ENAME, SAL
FROM EMP
WHERE SAL<(SELECT SAL FROM EMP WHERE ENAME='KING' AND DEPTNO IN (SELECT DEPTNO FROM DEPT WHERE DNAME='ACCOUNTING')); 

-- Q34
SELECT * 
FROM EMP
WHERE JOB='SALESMAN' AND DEPTNO IN (SELECT DEPTNO FROM DEPT WHERE DNAME='SALES');

-- Q35 
SELECT ENAME, SAL, JOB, HIREDATE
FROM EMP
WHERE DEPTNO=(select DEPTNO FROM DEPT WHERE DNAME='OPERATIONS') AND HIREDATE<(SELECT HIREDATE FROM EMP WHERE ENAME='KING') ;



-- Q41 
select ename
from emp
where sal=(select max(sal) from emp);

-- Q42 
select ename
from emp
where sal=(select mIN(sal) from emp);

-- Q43 
select ename, HIREDATE
from emp
where HIREDATE=(select MIN(HIREDATE) from emp);

-- Q44
select ename, HIREDATE
from emp
where HIREDATE=(select MAX(HIREDATE) from emp);

-- Q45
SELECT ENAME, COMM 
FROM EMP
WHERE COMM=(SELECT MIN(COMM) FROM EMP);

-- Q46
SELECT ENAME,SAL, COMM 
FROM EMP
WHERE COMM=(SELECT MAX(COMM) FROM EMP);

-- Q47
SELECT *
FROM EMP
WHERE EMPNO=(SELECT MAX(EMPNO) FROM EMP);

-- Q48
select *
from emp
where HIREDATE=(select MIN(HIREDATE) from emp);

-- Q49
select *, SAL*12 AS ANNUALSAL
from emp
where SAL*12=(select MIN(SAL*12) from emp);

-- Q50
select ename, sal, sal*12 as annualSal
from emp 
where sal*12>(select max(sal*12) from emp where job='salesman');