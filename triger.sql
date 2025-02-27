create trigger buenas
on      empleado
for insert  
as
begin
 declare @edad int, @alta boolean, @lider boolean
 select @edad= edad, @alta = fecha_alta, @lider = lider from empleado 
 update empleado set lider = !@lider where edad = @edad

end