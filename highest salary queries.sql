select now();
use xworkz;
/* the below query second highest salary*/
SELECT MAX(Salary) From emp45 WHERE Salary 
< (SELECT Max(Salary) FROM emp45);
/* the below query second highest salary*/
SELECT Salary
 FROM emp45 Emp1
 WHERE 1 = ( SELECT 
 COUNT( DISTINCT ( Emp2.Salary ) ) 
 FROM emp45 Emp2
 WHERE Emp2.Salary > Emp1.Salary );


/* the below query first highest salary*/

select * from emp45 where 
salary=(select max(salary) from emp45);


SELECT MAX(Salary) 
FROM emp45 
WHERE Salary NOT IN (select MAX(Salary) from emp45 ); 

SELECT Salary 
FROM emp45 E1 
WHERE n-1 = ( 
      SELECT COUNT( DISTINCT ( E2.Salary ) ) 
      FROM emp45 E2 
      WHERE E2.Salary >  E1.Salary );