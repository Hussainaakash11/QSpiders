create database depett;
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

-- IN OPERATOR 
select ename, deptno
from emp
where deptno IN (10,20);

-- BETWEEN OP
select ename, sal
from emp
where sal between 1521 and 2999;

-- RANGE IN BETWEEN OP
select ename, sal
from emp
where sal between 1000 and 3000;

-- IS OP
select *
from emp
where COMM is null;


-- IS NOT oprator
select *
from emp
where COMM is not null;

-- LIKE op
select ename
from emp
where ename like 'S%';

select *
from emp
where ename like '%R';

select ename
from emp
where ename like '_M%';

select ename
from emp
where ename like '%A%';

-- Q1
select *
from emp
where COMM is null;

-- Q2
select *
from emp
where mgr is null;

-- Q3
select *
from emp
where JOB iN('SALESMAN') AND DEPTNO IN (30);

-- Q4
select *
from emp
where JOB iN('SALESMAN') AND DEPTNO IN (30) AND SAL>1500;

-- Q5
select *
from emp
where ENAME LIKE 'S%' OR ENAME LIKE 'A%';

-- Q6
select *
from emp
where DEPTNO NOT IN (10,20);

-- Q7
select *
from emp
where ENAME NOT LIKE 'S%'; 

-- Q8
-- CHECK USING CHATGPT
select *
from emp
where MGR IS NOT NULL AND DEPTNO IN (10) ;

-- Q9 
select *
from emp
where JOB iN('CLERK') AND COMM IS NULL;

-- Q10
select *
from emp
where MGR IS NULL AND DEPTNO IN (10,30);

-- Q11
select *
from emp
where JOB iN ('SALESMAN') AND DEPTNO IN (30) AND SAL<2450;

-- Q12 
select *
from emp
where JOB iN ('ANALYST') AND DEPTNO IN (20) AND SAL>2500;

-- Q13
select *
from emp
where ENAME LIKE 'M%' OR 'J%';

-- Q14
select *, SAL*12 AS ANNUALSAL
from emp
where DEPTNO NOT IN (30);

-- Q15
select *
from emp
where ENAME NOT LIKE '%ES' OR '%R';

-- Q16
select *, SAL+SAL*10/100 AS HIKE
from emp
where DEPTNO IN (10) AND MGR IS NOT NULL;

-- Q17
select * 
from emp
where job in ('salesman') and ename like '%E%' and sal>999; 

-- Q18
select * 
from emp 
where hiredate>2022;

-- Q19
select * 
from emp
where hiredate like '%-2-%';

-- Q20
select * 
from emp
where job in ('Manager','clerk') and deptno in (10,20) and sal between 1000 and 3000 ;