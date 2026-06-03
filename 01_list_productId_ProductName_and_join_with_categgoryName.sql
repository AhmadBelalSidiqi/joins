use northwind;
select products.ProductID,products.ProductName,products.UnitPrice,categories.CategoryName
from products left join categories on products.CategoryID = categories.CategoryID
order by categories.CategoryName, ProductName