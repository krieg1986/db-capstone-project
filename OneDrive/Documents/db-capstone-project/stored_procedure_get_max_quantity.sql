CREATE PROCEDURE GetMaxQuantity() 
SELECT MAX(OrderQuantity) FROM Orders;