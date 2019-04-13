-- pl/sql block to update all employee phone numbers who belong to HR department
declare
type myarray is varray(14) of number;
empids myarray;
hrdeptid number;
total number;
phone_numbers myarray;
index_i number;
begin
-- new phone numbers array
phone_numbers := myarray('100','200','300','400','500','600','700','800','900','1000','1100','1200','1300','1400');
--select dept id of hr department
select dept_id into hrdeptid from department where dept_name='HR';

-- select all employees where dept_num=hrdeptid
select emp_id bulk collect into empids from employee where dept_no=hrdeptid;
--get the total count of employees
select count(*) into total from employee where dept_no=hrdeptid; 

for i in 1..total 
loop
  update employee set phone_number=phone_numbers(i) where emp_id=empids(i);
end loop;
end;
