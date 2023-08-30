create table emp(emp_id number(10),emp_name varchar2(20), 
department varchar2(20),emp_gen char(2),emp_age number(10), 
emp_salary varchar(50));

alter table emp modify emp_salary varchar(20);
alter table emp add emp_desig varchar(15);
alter table emp modify emp_id number(10) not null;
alter table emp add constraint const1 primary key(emp_id);

rename emp to newemp;
rename newemp to emp;

alter table emp add entry_date_time timestamp; 
alter table emp add phonenum varchar2(20);
alter table emp modify phonenum number(20);

rename emp_bkp to emp_bkp_18082023;

drop table emp_bkp_18082023;
create table emp_bkp as select* from emp;
truncate table emp_bkp;
select sysdate from dual;
select * from dual;
select 'pooja' from dual;
select sysdate timestamp from dual;
alter table emp add email varchar2(20);
alter table emp modify entry_date_time timestamp default sysdate;

desc emp;

insert all into emp(emp_id,emp_name,department,emp_gen,emp_age,emp_salary,
emp_desig,phonenum,email)
values(2,'KP','cse','F',22,'1000','x','9390912262','abcd@gmail.com'),
values((3,'SK','cse','F',22,'1000','y','9393912262','abxd@gmail.com',);


insert into emp (emp_id,emp_name,department,emp_gen,emp_age,emp_salary,
emp_desig,phonenum,email) 
values(2,'KP','cse','F',22,'1000','x','9390912262','abcd@gmail.com');
select * from emp;
delete from emp where emp_name='pooja';
select * from emp;
insert all into emp(emp_id,emp_name,department,emp_gen,emp_age,emp_salary,
emp_desig,phonenum,email)
values(1,'sk','ece','F',22,'2000','x','9390912282','apyd@gmail.com')
into emp(emp_id,emp_name,department,emp_gen,emp_age,emp_salary,
emp_desig,phonenum,email)
values(3,'san','eee','F',21,'5000','z','9093912262','auxd@gmail.com')
select * from dual;

insert all into emp(emp_id,emp_name,department,emp_gen,emp_age,emp_salary,
emp_desig,phonenum,email)
values(4,'Kk','me','M',19,'6000','v','8090912262','uvecd@gmail.com')
into emp(emp_id,emp_name,department,emp_gen,emp_age,emp_salary,
emp_desig,phonenum,email)
values(5,'hK','civil','M',18,'8000','u','7993912262','kkkxd@gmail.com')
select * from dual;

 
 select * from emp;
 insert all into emp(emp_id,emp_name,department,emp_gen,emp_age,emp_salary,
emp_desig,phonenum,email)
values(6,'chandu','me','M',19,'9000','v','8090912112','uijcd@gmail.com')
into emp(emp_id,emp_name,department,emp_gen,emp_age,emp_salary,
emp_desig,phonenum,email)
values(7,'pooja','eee','M',18,'11000','R','7993933262','kmhxd@gmail.com')
into emp(emp_id,emp_name,department,emp_gen,emp_age,emp_salary,
emp_desig,phonenum,email)
values(8,'sandhya','AI','M',18,'13000','Q','7993442262','kkcdfd@gmail.com')
into emp(emp_id,emp_name,department,emp_gen,emp_age,emp_salary,
emp_desig,phonenum,email)
values(9,'chandhana','biotech','F',18,'20000','S','7553912262','eeckxd@gmail.com')
into emp(emp_id,emp_name,department,emp_gen,emp_age,emp_salary,
emp_desig,phonenum,email)
values(10,'santhoshi','it','F',18,'15000','T','7900912262','kttuxd@gmail.com')
select * from dual;
select * from emp;
alter table emp add dep_id number(10);
update emp set dep_id=200 where emp_id=1;
update emp set dep_id=201 where emp_id=2;
update emp set dep_id=202 where emp_id=3;
update emp set dep_id=203 where emp_id=4;
update emp set dep_id=204 where emp_id=5;
update emp set dep_id=205 where emp_id=6;
update emp set dep_id=206 where emp_id=7;
update emp set dep_id=207 where emp_id=8;
update emp set dep_id=208 where emp_id=9;
update emp set dep_id=209 where emp_id=10;
select * from emp;
select emp_id,emp_name,department,emp_gen,emp_age,emp_salary,
emp_desig,phonenum,email from emp where dep_id=201;

update emp set emp_salary=emp_salary*1.10 where dep_id <> 201;
select * from emp;

//////////////////////////////////////////////////////////////////////
create table departments(department_id number(10),department_name varchar2(30),
manager_id number(10),location_id number(10));
create table jobs(jobs_id varchar2(20),job_title varchar2(35),min_salary number(10),
max_salary number(10));
insert all into departments(department_id,department_name,manager_id,location_id)
values(100,'PLSQL',500,2000)
into departments(department_id,department_name,manager_id,location_id)
values(200,'DA',501,2001)
into departments(department_id,department_name,manager_id,location_id)
values(300,'NSG',502,2002)
into departments(department_id,department_name,manager_id,location_id)
values(400,'AI',503,2003)
select * from dual;
select * from departments;
truncate table jobs;
insert all into jobs(jobs_id,job_title,min_salary,max_salary)
values('2399','TSD',1000,2000)
into jobs(jobs_id,job_title,min_salary,max_salary)
values('2400','DBA',4000,5000)
into jobs(jobs_id,job_title,min_salary,max_salary)
values('2410','HR',6000,8000)
into jobs(jobs_id,job_title,min_salary,max_salary)
values('2500','SSD',9000,11000)
select * from dual;

select * from jobs;
select * from emp;
alter table jobs add depid number(10);
update jobs set depid=100 where jobs_id=2399;
update jobs set depid=200 where jobs_id=2400;
update jobs set depid=300 where jobs_id=2410;
update jobs set depid=400 where jobs_id=2500;

alter table jobs add emp_id number(10);
update jobs set emp_id=1 where jobs_id=2399;
update jobs set emp_id=2 where jobs_id=2400;
update jobs set emp_id=3 where jobs_id=2410;
update jobs set emp_id=4 where jobs_id=2500;

alter table departments add emp_id number(10);
update departments set emp_id=1 where department_id=200;
update departments set emp_id=2 where department_id=400;
update departments set emp_id=3 where department_id=100;
update departments set emp_id=4 where department_id=300;

alter table jobs add constraint fk_jobs foreign key(emp_id)
references emp (emp_id);

alter table departments add constraint fk_deps foreign key(emp_id)
references emp (emp_id);
select emp_id from emp where jobs.emp_id=departments.emp_id;

alter table emp add job_id number(10);
update emp set job_id=2399 where emp_id=2;
update emp set job_id=2400 where emp_id=1;
update emp set job_id=2410 where emp_id=4;
update emp set job_id=2500 where emp_id=3;

update emp e 
set e.emp_salary=e.emp_salary*1.15
where e.job_title='DBA'
and e.dep_ in(select d.department_id from departments d
where d.department_name='NSG');



select * from emp;

select upper(emp_name)as upper ,lower(emp_name) as lower,substr(email,2,3) as substring,
instr(emp_name,' ',1,1) as instring,
length(emp_name) as length ,
lpad(emp_salary,8,'#')as lpad,
rpad(emp_salary,8,'#')as rpad,
ltrim(phonenum,2)as ltrim,
rtrim(phonenum,2)as rtrim
trunc(enty_date_time) as trunc
replace(emp_name,'k','t')as replace
round(emp_salary,2) as round
trim(emp_name);
from emp;


create table employees(employee_id number(10) primary key, first_name varchar2(20), last_name varchar2(25),
email varchar2(25), phone_number varchar2(20), hire_date date, job_id varchar2(10), 
salary number(30), commission_pct number(10), manager_id number(10), department_id number(10));

create table emp_infrm(empl_id number(10),empl_name varchar2(20),
empl_sal number(20),empl_gen varchar2(20),empl_design varchar2(20),
empl_dept;


select * from emp;
select emp_desig,count(emp_name)as emp_namecount from emp
group by emp_desig;

select * from emp;

alter table













