use northwind;
select products.ProductName, categories.CategoryName
from products
         join categories on products.CategoryID = categories.CategoryID
where ProductID in (select ProductID
                    from products
                    where UnitPrice = (select max(UnitPrice)
                                       from products));