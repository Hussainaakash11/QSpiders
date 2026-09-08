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