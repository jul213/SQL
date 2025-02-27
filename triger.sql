create trigger buenas
on      empleado
for insert  
as
begin
 declare @edad int, @lider bit 
 select @edad= edad, @lider = lider from inserted 
 update empleado set lider = 0 
 where edad = @edad and id_empleado in (select id_empleado from inserted);

end