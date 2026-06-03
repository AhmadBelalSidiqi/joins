use northwind;
select orders.OrderID, orders.ShipName, orders.ShipAddress, shippers.CompanyName
from orders
         join shippers on orders.ShipVia = shippers.ShipperID
where OrderID in (select OrderID
                  from orders
                  where ShipCountry = 'Germany')