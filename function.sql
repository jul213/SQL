create function calculoIVA(@price money) return money
as
begin 
    declare @iva money 
    set @iva = @price * 1.16
end