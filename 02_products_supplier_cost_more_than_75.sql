use northwind;
select products.ProductID, products.ProductName, products.UnitPrice, suppliers.CompanyName
from products
         join suppliers on products.SupplierID = suppliers.SupplierID
where UnitPrice > 75
order by products.ProductName