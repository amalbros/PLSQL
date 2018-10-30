set  serveroutput on;
declare
a number;
z number;
r number;
n number;
begin
n:=&n;
z:=n;
r:=0;
a:=0;
while n>0
loop
a:=mod(n,10);
r:=r*10+a;
n:=trunc(n/10);
end loop;
dbms_output.put_line('Reverse:'||r);
end;
/