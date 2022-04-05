use xworkz;
select * from emp45;
select * from dept45;emp45
select job,count(*) noofemp from emp45 group by job;

select job,sum(salary) noofemp from emp45 group by job;

select job,max(salary),min(salary),avg(salary)   from emp45 group by job;

dept45select job,count(*),dept_id from emp45 group by job,dept_id;

--------having------------
select job,count(*) noofemp from emp45 group by job having count(*)<=2 ;
select job,sum(salary) noofemp from emp45 group by job having sum(salary)>10000;
----orderby-----
select  * from emp45 order by salary desc;
select  * from emp45 order by name asc;
select distinct salary from emp45;
/*BETWEEN*/
SELECT * FROM emp45 WHERE hiredate
BETWEEN '2019-01-02' AND'2020-04-02';

/*IN*/
SELECT * FROM emp45 where  dept_id in(101,103);


SELECT   * FROM emp45 
ORDER BY salary DESC;
SELECT * FROM emp45 
ORDER BY salary asc LIMIT 3;

SELECT   * FROM emp45 limit 5,1;
