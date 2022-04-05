USE xworkz;
/**/
/*the below set fuction is used to check foreign key*/
SET FOREIGN_KEY_CHECKS=0;
select * from emp45;
/*the below query is for inner join query*/
select e.name,d.dname
from emp45 e INNER join dept45 d on e.dept_id=d.did;
/*the below query is for left join query*/
select e.name,d.dname
from emp45 e LEFT join dept45 d 
on e.dept_id=d.did;
/*the below query is for right join query*/

select e.name,d.dname
from emp45 e right join dept45 d 
on e.dept_id=d.did;
/*the below query is for full join query,
mysql will not support full join,
so we have to use 
left join query + union + right join query*/
select e.name,d.dname
from emp45 e  left OUTER JOIN dept45 d 
on e.dept_id=d.did
union 
select e.name,d.dname
from emp45 e  right OUTER JOIN dept45 d 
on e.dept_id=d.did;

/* the below query shows  cross join*/
select * from emp45 cross join dept45;


