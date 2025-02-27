create trigger buenas
on      empleado
for insert  
as
begin
 declare @edad int, @alta boolean, @lider bit 
 select @edad= edad, @alta = fecha_alta, @lider = lider from inserted 
 update empleado set lider = !@lider where edad = @edad

end