use northwind;
select orders.OrderID, orders.OrderDate, orders.ShipName,orders.ShipAddress
from orders
where OrderID in (
    select OrderID
    from `order details`
    where ProductID in (
        select ProductID
        from products
        where ProductName = 'Sasquatch Ale'
        )
    );