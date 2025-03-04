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
insert into Customers(CustomerID, CompanyName) VALUES (CustomerID,  @ CompanyName)
if ()