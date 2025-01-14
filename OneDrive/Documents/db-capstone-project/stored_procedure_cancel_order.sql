DELIMITER //
CREATE PROCEDURE CancelOrder(IN order_id INT)
BEGIN 
DELETE FROM Orders WHERE OrderID = order_id;
SELECT * FROM Orders;
END //