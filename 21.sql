set  serveroutput on;
declare
n char(20);
begin
n:=&n;
select reverse(n) into n from dual;
dbms_output.put_line('reverse:'||n);
end;
/