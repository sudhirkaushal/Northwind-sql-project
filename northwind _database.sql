-- 1 
SELECT ProductName , QuantityPerUnit FROM northwind.products;
-- 2
select ProductID, ProductName FROM northwind.products
where Discontinued = "false" order by ProductName;
-- 3
select ProductID, ProductName FROM northwind.products
where Discontinued = "true" order by ProductName;
-- 4
select productname,unitprice  FROM northwind.products
order by unitprice desc;
-- 5
select productid ,productname ,unitprice
 FROM northwind.products
 where(((unitprice)<20)and((Discontinued)= false))
 order by unitprice desc;
-- 6
select productid ,productname ,unitprice
 FROM northwind.products
 where(((unitprice)>=15 and (unitprice)<=25)and(( products.Discontinued)= false))
 order by products.UnitPrice desc;
-- 7
select distinct productname,unitprice from  northwind.products
where unitprice >(select avg(unitprice)from northwind.products)
order by unitprice;
-- 8
select distinct productname as ten_most_expensive_products ,unitprice
from northwind.products as a 
where 20 >= (select count(distinct unitprice)
from northwind.products as b
where b.unitprice >= a.unitprice)
order by UnitPrice desc;
-- 9
select count(productname)
from northwind.products 
group by Discontinued;
-- 10
select productname , UnitsOnOrder,UnitsInStock
from northwind.products 
where (((Discontinued)= false) and ((UnitsInStock)<UnitsOnOrder));
