set serveroutput on
declare 
lower  number;
upper number;
area decimal(6,3);
cir decimal(6,3);
begin
lower:=&lower;
upper:=&upper;
for i in lower..upper
loop
area:=3.14*i*i;
cir:=2*3.14*i;
insert into circlearea values(i,area,cir);
end loop;
end;
/
 