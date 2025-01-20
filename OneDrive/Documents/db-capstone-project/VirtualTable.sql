CREATE VIEW OrdersView AS SELECT OrderID, OrderQuantity, 
TotalCost FROM Orders WHERE OrderQuantity > 2;