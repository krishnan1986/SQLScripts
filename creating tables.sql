CREATE TABLE EMPLOYEE 
(
EMP_ID INTEGER NOT NULL,
NAME VARCHAR2(50),
SALARY NUMBER(20,2) NOT NULL,
COUNTRY VARCHAR2(50),
NAME_OF_STATE VARCHAR2(100),
DISTRICT VARCHAR2(100),
EMAIL_ID VARCHAR2(250),
PHONE_NUMBER NUMBER(25),
DEPT_NO INTEGER NOT NULL,
CONSTRAINT EMP_PK PRIMARY KEY(EMP_ID)
);

alter table employee 
--add dept_no integer not null;
add CONSTRAINT emp_dep_fk foreign key (dept_no) references DEPARTMENT(dept_id);

alter table department
disable constraint dep_bline_fk ;
--FOREIGN key (bline_id) REFERENCES business_lines(line_id);

alter table business_lines
--add constraint bline_dep_fk foreign key (dept_num) references department(dept_id);
--add lead_emp_id integer not null;
disable constraint bline_emp_fk;-- foreign key (lead_emp_id) references employee(emp_id);

drop table employee cascade constraints;
drop table department cascade constraints;
drop table business_lines cascade constraints;

SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME = 'employee';


delete from business_lines;