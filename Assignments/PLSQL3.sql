-- procedure that displays the upcoming date of births of employees
create or replace procedure ASSIGN3(date_of_birth_emp IN date)
is
tempdate date;
ename varchar2(100);
cursor c1
is 
select e.date_of_birth,e.name from employee e;
begin
open c1;
loop
fetch c1 into tempdate,ename;
exit when c1%NOTFOUND;
if ((tempdate is not null) and (ename is not null)) then
if(tempdate > date_of_birth_emp) then 
 dbms_output.put_line('employee with DOB: ' || tempdate || ':' || 'and name ' ||ename || ' has birthday upcoming');
end if;
end if;
end loop;
--return enames;

end assign3;
--begin
--   dbms_output.put_line(assign3('01-01-92'));
--end;
