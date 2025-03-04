create procedure buenas
as
begin
 select * from products where id = 2;
end


alter procedure buenas
as
begin
 select * from products where id = 5;
end




create procedure insert_u @CustomerID char(5),
                          @CompanyName varchar(40),
                          @returnID char(5) OUTPUT
as
begin 
begin try
insert into Customers(CustomerID, CompanyName) VALUES (@CustomerID,  @CompanyName);
set @returnID = @CustomerID
print 'se realizo un insert'
end try
BEGIN catch
update Customers
set CompanyName = @CompanyName
WHERE CustomerID = @CustomerID;
set @returnID = @CustomerID;
print "se realizo un update"
end catch
end;
