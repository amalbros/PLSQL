set  serveroutput on;
declare
n number;
z varchar(20);
begin
n:=&catalogno;
select catalogno into z from video10 where catalogno=n;
 update video10 set dailyrental= dailyrental+10 where catalogno=n;
 dbms_output.put_line('Record exists and  its daily rental is   modified');
exception
	when NO_DATA_FOUND then
	  dbms_output.put_line('Record doesnt exist');
end;
/