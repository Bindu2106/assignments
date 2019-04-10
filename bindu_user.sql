---------------- 19-03-19 ------------------

-------------------- TRIGGERS  ----------------------------

create table employee_audit
(empno number,
 doa date,
 oldvalue number,
 newvalue number);
 
create or replace trigger my_sal_trig
before update of salary on employee
for each row
begin
insert into employee_audit values(:old.empno,sysdate,:old.salary,:new.salary);
end;
/

----------------------- DML Triggers ------------------
create table job_audit
(oldjcode varchar2(6),
newjcode varchar2(6),
doa date,
oldjname varchar2(20),
newjname varchar2(20),
l_user varchar2(20));

create or replace trigger job_trig
before insert or update or delete on job
for each row
declare
v_user varchar2(20);
begin
select user into v_user from dual;
insert into job_audit values(:old.jcode,:new.jcode,sysdate,:old.jname,:new.jname,v_user);
end;
/

----------------------- DDL Triggers ----------------------

create table  bindu_schema_audit(ddl_date date,
                                 ddl_user varchar2(20),
                                 object_created varchar2(20),
                                 object_name varchar2(20),
                                 ddl_operation varchar2(20));

create or replace trigger bindu_audit_tr
after ddl on schema
declare
v_user varchar2(20);
begin
select user into v_user from dual;
insert into bindu_schema_audit values(sysdate,v_user,ora_dict_obj_type,ora_dict_obj_name,ora_sysevent);
end;
/


------------------ Event Triggers -------------------
drop table bin_evnt_audit;

create table bin_evnt_audit
(event_type varchar2(30),
logon_date date,
logon_time varchar2(30),
logof_date date,
logof_time varchar2(30));

create or replace trigger bin_lgon_audit
after logon on schema
begin
insert into bin_evnt_audit values(ora_sysevent,sysdate,to_char(sysdate, 'hh24:mi:ss'),null,null);
end;
/

create or replace trigger bin_lgoff_audit
before logoff on schema
begin
insert into bin_evnt_audit values(ora_sysevent,null,null,sysdate,to_char(sysdate, 'hh24:mi:ss'));
end;
/

select * from bin_evnt_audit;


---------------- Instead of Triggers ------------------

create table trainer
(trainer_name varchar2(20));

create table subject
(subject_name varchar2(20));

create view vw_tr_su as
select trainer_name,subject_name from trainer, subject;

              ---grant create view to bindu -----

insert into trainer values('Swetha');
insert into subject values('Java'); 

select * from trainer;
select * from subject;

select * from vw_tr_su;

create or replace trigger vw_update
instead of insert or update or delete on vw_tr_su
for each row
begin
      if inserting then
            insert into trainer values(:new.trainer_name);
            insert into subject values(:new.subject_name);
      elsif updating then
            update trainer set trainer_name = :new.trainer_name where trainer_name = :old.trainer_name;
            update subject set subject_name = :new.subject_name where subject_name = :old.subject_name;
      elsif deleting then
            delete from trainer where trainer_name=:old.trainer_name;
            delete from subject where subject_name=:old.subject_name;
      else
            dbms_output.put_line('invalid');
      end if;
end;
/

insert into vw_tr_su values('Bindu','SQL');

delete from vw_tr_su where trainer_name='Swetha';