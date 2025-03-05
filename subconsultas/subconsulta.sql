select  od.date, p.name 
from orderdetails od
inner join products p on od.productID = p.productID
where "usa" in (select country from suppliers
                where products.supplierID = supplier.ID )