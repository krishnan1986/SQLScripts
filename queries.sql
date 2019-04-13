--call updateDOB(12,'01-02-92');
--call insertemp(5);
--select empsal(10) from dual;
--select empsal(10) from dual;

--update employee set salary=salary/1000;

--update employee set salary=10000 where emp_id=8;

--delete from employee where emp_id=11;
rollback;


insert into employee(emp_id,salary,dept_no) values (15,108.45,101);

--alter table insertion_audit modify salary number(20,2);
