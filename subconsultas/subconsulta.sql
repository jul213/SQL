select  od.date, p.name 
from orderdetails od
inner join products p on od.productID = p.productID
where 'usa' in (select s.country from suppliers s
                where p.supplierID = s.supplierID)
and p.productName like 'L%'