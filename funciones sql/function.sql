create function calculoIVA(@price money) return money
as
begin 
    declare @iva money 
    set @iva = @price * 0.16
    return @iva
end