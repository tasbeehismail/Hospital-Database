-------select from one table  ---------
use Hospital;
select mname from medicine ;

select  CONCAT(fname, ' ',mname, ' ', lname) as employee_name from employee where salary between 5000 and 8000;

select email from employee where salary <6000;

select CONCAT(fname,' ',mname,' ',lname) as nurse_name from employee where emp_type='nurse' and city !='Cairo';

select DOB from patient where blood_group in('A+','A-') ;

select CONCAT(fname,' ',mname,' ',lname) as patient_name from patient where docid=1 and fname is not null;

select distinct blood_group from patient;

select  fname from employee where mname like 'A__' or emp_type ='security man';

select mname from medicine where mname like '%N%'

select * from relative where rname like '%d'; 

select dname from department where dname like 'A%';

select CONCAT(fname,' ',mname,' ',lname) as patient_name from patient where lname like '____'; -- {4}

select * from employee where emp_type='nurse' order by dob;

select distinct CONCAT(street,' ',city) as addree from employee ;

select max(tcost) as max_total_cost, min(tcost) as min_total_cost  from bill;

select emp_type,avg(salary) as avg_salary from employee group by emp_type order by avg(salary) ;

select ptype,count(pid) as number_of_patient  from patient  group by ptype;

select sum(tcost) as gain from bill;

--- join---

select CONCAT(fname,' ',mname' ',lname) as patient_name , r.rname ,r.pno from patient p inner join relative r on r.pid= p.pid and p.ptype=1;

select CONCAT(r.rid,fname,' ',mname,' ',lname) as patient_name from patient p join allocated_in_room a on p.pid=a.pid
join room r on r.rid=a.rid order by r.rid;

select  CONCAT(e.fname,' ',e.mname) as Doctor_name, CONCAT(p.fname,' ',p.mname) as patient_name from employee e join doctor d on d.docid=e.emp_id 
left outer join patient p on p.docid=d.docid and p.fname is not null;
 
select r.rid ,a.allocated_date from allocated_in_room a right outer join room r on r.rid=a.rid;

select m.mname ,count(p.pid) from patient p join takes_med t on p.pid=t.pid
join medicine m on  m.mid=t.mid
group by m.mname order by count(p.pid);

----union family

select pid from takes_med
union  
select pid from allocated_in_room;

select pid from assigned_to_nurse
union all 
select pid from paid_bill;

select pid from patient
intersect 
select pid from allocated_in_room;

select pid from patient
except 
select pid from had_test;

---sub query

select emp_id, salary from employee 
where salary >(select avg(salary)from employee );

select mname from medicine
where mcost=(select max(mcost) from medicine);

select distinct qualification from doctor 
where docid in(select emp_id from employee where city ='Alex');