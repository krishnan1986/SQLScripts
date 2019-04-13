-- trigger that runs when table department is updated 
create or replace trigger ASSIGN4 
after
update 
on department
for each row
when (new.total_employees > 100)
declare  
begin 

DBMS_output.put_line (' No of employees in dept : ' || :new.dept_name || 'is :' ||:new.total_employees); 
end;
