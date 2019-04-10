------------------- PL/SQL -------------------------

begin
dbms_output.put_line('hello');
end;
/

declare
v_name varchar2(20) := 'Bindu';
begin
dbms_output.put_line('hello' || v_name);
end;
/

set serveroutput on;
declare
v_name varchar2(20) := 'ABC';
begin
dbms_output.put_line('hello' || v_name);
end;
/

select * from employee;

declare
v_salary number(8);
begin
select salary into v_salary from employee where empno=111;
end;
/

declare
v_salary number(8);
begin
select salary into v_salary from employee where empno=111;
dbms_output.put_line('The employee salary is' || v_salary);
end;
/


set serveroutput on;
declare
v_salary number(8);
begin
select salary into v_salary from employee where empno=111;
dbms_output.put_line('The employee salary is ' || v_salary);
end;
/

set serveroutput on;
declare
v_salary employee.salary%type;
begin
select salary into v_salary from employee where empno=114;
dbms_output.put_line('The Employee Salary is  ' || v_salary);
end;
/

declare
v_pi constant number := 3.141592;
begin
dbms_output.put_line(v_pi);
end;
/

declare
v_pi constant number default 3.141592;
begin
dbms_output.put_line(v_pi);
end;
/


----------------------- REFERENCE DATATYPES ------------------------

set serveroutput on;
declare
v_rec employee.salary%type;
begin
select salary into v_rec from employee where empno=114;
dbms_output.put_line('The employee record is  ' || v_rec);
EXCEPTION
      WHEN no_data_found THEN
      dbms_output.put_line('The employee record does not exists');
end;
/

set serveroutput on;
declare
v_rec employee.salary%type;
begin
select salary into v_rec from employee where empno=114;
dbms_output.put_line('The employee record is  ' || v_rec);
EXCEPTION
      WHEN no_data_found THEN
      dbms_output.put_line('The employee record does not exists');
      WHEN others THEN
      dbms_output.put_line('system is upgrading.......');
end;
/

set serveroutput on;
declare
v_rec employee%rowtype;
begin
select * into v_rec from employee where empno=111;
dbms_output.put_line('The employee name is  ' || v_rec.ename);
end;
/


----------------------- CONDITIONAL STATEMENTS (if,if elseif,if else and loops) ---------------------------

set serveroutput on;
declare
v_rec employee.salary%type;
begin
select salary into v_rec from employee where empno=112;
if v_rec > 10000 then
dbms_output.put_line('The employee record is  ' || v_rec);
end if;
end;
/

set serveroutput on;
declare
v_rec employee.salary%type;
begin
select salary into v_rec from employee where empno=114;
if v_rec < 20000 then
dbms_output.put_line('The employee record is  ' || v_rec);
end if;
end;
/

set serveroutput on;
declare
v_rec employee.salary%type;
begin
select salary into v_rec from employee where empno=112;
if v_rec > 30000 then
dbms_output.put_line('The employee salary is  ' || v_rec);
else
dbms_output.put_line('The emplyee salary is less than ' || v_rec);
end if;
end;
/

------------------ BIND VARIABLE ------------------

begin
dbms_output.put_line(v_name);
end;
/

variable v_bind1 varchar(20);

variable v_bind1 varchar2(20);
exec :v_bind1 := 'Anish';


------------------ CURSOR ------------------------

------more than one row cannot fetch at a time ---------------
set serveroutput on;
declare
v_rec employee%rowtype;
begin
select * into v_rec from employee where deptno=1;
dbms_output.put_line('the employee record ' || v_rec.ename);
end;
/

-----Cursor to get more thanone row ---------

set serveroutput on;
declare
cursor emp_cur is select * from employee where deptno=1; ----declare cursor
v_rec employee%rowtype; ------declare variable
begin
   open emp_cur; -----open cursor
   loop
   fetch emp_cur into v_rec; ----fetch cursor
   dbms_output.put_line('the employee name is ' || v_rec.ename);
   dbms_output.put_line('the employee salary is ' || v_rec.salary);
   exit when emp_cur%NOTFOUND;
   end loop;
   close emp_cur; ----close cursor
end;
/

select * from department;

select * from employee;


----------------Exception Handling ------------------

set serveroutput on;
declare
v_sal employee.salary%type;
INVALID_AGE exception;
n_age number;
begin
select salary into v_sal from employee where empno=111;
dbms_output.put_line(v_sal);
n_age := &age;
if(n_age < 18) then
Raise INVALID_AGE;
end if;
exception
       when NO_DATA_FOUND then
       dbms_output.put_line('the employee does not exists');
       when INVALID_AGE then
       dbms_output.put_line(' not eligible for voting');
       when INVALID_NUMBER then
       dbms_output.put_line('value cannot convert');
end;
/

set serveroutput on;
declare
v_sal employee.salary%type;
n_sal number;
begin
select salary into v_sal from employee where empno=111;
select min(salary) into n_sal from employee;
if(v_sal <= n_sal) then
update employee set salary=salary + (salary * 0.3);
dbms_output.put_line('salary is updated');
end if;
exception
  when  no_data_found then
  dbms_output.put_line('employee does not exist');

end;
/

select salary from employee where empno=111;



---------------------- 18 Mar 19 ----------------------

------   by using anonymous blocks -------------
set serveroutput on;
declare
v_Ename employee.ename%type;
v_Dname department.dname%type;
begin
select ename,dname into v_Ename,v_Dname from employee e,department d
where d.deptno=e.deptno and d.deptno=1;
dbms_output.put_line(v_Ename);
dbms_output.put_line(v_Dname);
exception
  when too_many_rows then
  dbms_output.put_line('multiple records');
end;
/

------ by using cursors -----------------

set serveroutput on;
declare
cursor cur_emp is select ename,dname from employee e,department d
where d.deptno=e.deptno and deptno=1;
r_emp cur_emp%rowtype;
begin
open cur_emp;
loop
fetch cur_emp into r_emp;
dbms_output.put_line(r_emp.ename ||'  '|| r_emp.dname);
exit when cur_emp%notfound;
end loop;
close cur_emp;
end;
/


--------- user defined datatype -----------

set serveroutput on;
declare
type v_emp_dep is record(
v_Ename employee.ename%type,
v_Dname department.dname%type);
var v_emp_dep;
begin
select ename,dname into var.v_Ename,var.v_Dname from employee e,department d
where d.deptno=e.deptno and e.empno=111;
dbms_output.put_line(var.v_Ename);
dbms_output.put_line(var.v_Dname);
exception
  when no_data_found then
  dbms_output.put_line('employee record does not exists');
  when too_many_rows then
  dbms_output.put_line('multiple records');
end;
/


----------------- Procedures/Stored Procedures --------------------

create or replace procedure displayname(
v_empno in employee.empno%type,
v_name out employee.ename%type)
is
begin
select ename into v_name from employee
where empno=v_empno;
dbms_output.put_line(v_name);
end;
/

variable vname varchar2(25);
exec displayname(111,:vname);

-------------- without out -----------

create or replace procedure displayname(
v_empno in employee.empno%type)
is
v_name varchar2(25);
begin
select ename into v_name from employee
where empno=v_empno;
dbms_output.put_line(v_name);
end;
/

variable vname varchar2(25);
exec displayname(111);

---------- by using bindvariable and without using print statments ---------

create or replace procedure displayname1(
v_empno in employee.empno%type,
v_name out employee.ename%type)
is
begin
select ename into v_name from employee
where empno=v_empno;
end;
/

variable vname varchar2(25);
exec displayname1(112,:vname);

print vname;


---------------- for salary increment we write  procedure --------------

create or replace procedure emp_salary_increase
               (emp_id in employee.empno%type,
                salary_inc in out employee.salary%type)
                is
                tmp_sal number;
begin
    select salary into tmp_sal
    from employee where empno = emp_id;
        if tmp_sal between 10000 and 20000 then
           salary_inc := tmp_sal * 1.2;
        elsif tmp_sal between 20000 and 30000 then
           salary_inc := tmp_sal * 1.3;
        elsif tmp_sal > 30000 then
           salary_inc := tmp_sal * 1.4;
        end if;
end;
/

variable vsal NUMBER;
exec emp_salary_increase(112,:vsal);

print vsal;

------------- by using anonymous block to print all employees increment salary -----------------

declare
   cursor updated_sal is
   select empno,salary from employee;
   pre_sal number;
begin
   for emp_rec in updated_sal
   loop
       pre_sal := emp_rec.salary;
       emp_salary_increase(emp_rec.empno, emp_rec.salary);  ----- call the procedure
       dbms_output.put_line('The salary of ' || emp_rec.empno || ' increased from ' || pre_sal || ' to ' || emp_rec.salary);
       end loop;
end;
/

--------------- transferring amount from one id to another id --------------

create or replace procedure transfer_sal( fromid in number,
                                          toid in number,
                                          amount in number)
is
begin

     update employee set salary=salary-amount where empno=fromid;
     update employee set salary=salary+amount where empno=toid;
end;
/

exec transfer_sal(113,111,3000);

select * from employee;
                       
----------------------- Funtions ----------------------

create or replace function welcome_msg_func(p_name in varchar2)
return varchar2
is
begin
return ('Welcome ' || p_name);
end;
/

-------------------- Calling Function -------------------

declare
lv_msg varchar2(250);
begin
lv_msg := welcome_msg_func ('Bindu');  ----------- by using anonymous block we calling a funtion -----------
dbms_output.put_line(lv_msg);
end;

select welcome_msg_func('Bindu') from dual;    ---------- by using select keyword -------------

variable l_msg varchar2(20);
exec :l_msg := welcome_msg_func ('Bindu');  ------------ by using bind variable -------------
print l_msg;
                                          
--------- area of a circle using function ----------

create or replace function area_of_circle(radius in number)
return  number                       
is
PI constant number := 3.14;
begin
return (PI *( radius *radius));
end;
/

select area_of_circle(12) from dual;


------------------ Packages ----------------------

------ ctreating a package -------

create or replace package pack_example as
       function get_fullname(n_emp_id number)
       return varchar2;
       function get_fullsalary(n_emp_id number)
       return number;
       procedure examl;
end pack_example;

------ callinig a function ---------

declare
   n_salary number(8,2);
   v_name varchar2(46);
   n_emp_id number := &emp_id;
begin
   v_name := pack_example.get_fullname(n_emp_id);
   n_salary := pack_example.get_fullsalary(n_emp_id);
   if v_name is not null and
    n_salary is not null
    then
    dbms_output.put_line('Employee: ' || v_name);
    dbms_output.put_line('Salary: ' || n_salary);
    end if;
    end;
    /
    
    
    --------------------- 19-03-19 ---------------------------------
    
    