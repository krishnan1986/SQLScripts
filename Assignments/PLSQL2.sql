--procedure to display happy anniversary 
create or replace procedure ASSIGN2(date_of_anniversary IN date)
is 
currdate date;
tempDate date;
tempName varchar2(100);
jday number;
jmonth number;
cursor c1 is 
select date_of_joining,name from employee;
--type enames is varray(30) of varchar2(100);
--names enames := enames();
i integer:=1;
totalRows integer;
begin
 jday:=EXTRACT(day from date_of_anniversary)  ;
--dbms_output.put_line(jday);
 jmonth:=extract(month from date_of_anniversary);
--dbms_output.put_line(jmonth);

--where date_of_joining like jday ||'-'||jmonth||'%';
-- collect names of employees

--where date_of_joining like jday ||'-'||jmonth||'%';
-- current date
--select to_date(SYSDATE,'DD-MM-YY') into currdate from dual;
open c1;
loop
fetch c1 into tempDate,tempName;
exit when c1%NOTFOUND;
 --match the input with date of joining
 
 if ((tempDate is not null) and (tempName is not null)) then
 --dbms_output.put_line('i is'|| i||' ' || tempDate||','|| EXTRACT(day from tempDate) );
 --names.extend;
 if((EXTRACT(day from tempDate) = jday) and (extract(month from tempDate) = jmonth)) then
   --names(i):=tempName;
   dbms_output.put_line('employee with name:'||' ' || tempName || ' is celebrating work anniversary');
 end if;
end if;
 i:=i+1;

end loop;
--totalRows:=names.count;
--dbms_output.put_line('matching record count is ' ||' ' || totalRows);
--for i in 1..totalRows
--loop
--if(
--(
--jday = EXTRACT(DAY from currdate))
--AND 
--(
--jmonth= EXTRACT(MONTH from currdate))
--) then
--
-- DBMS_OUTPUT.PUT_LINE('Happy anniversary' || ' ' );
--end if;
--end loop;


end ASSIGN2;
