PREPARE GetOrderDetail FROM 'SELECT OrderID, OrderQuantity, TotalCost FROM Orders 
WHERE CustomerID = ?';