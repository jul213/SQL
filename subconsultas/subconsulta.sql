select  od.date, p.name 
from orderdetails od
inner join products p on od.productID = p.productID
where 