SELECT Customers.CustomerID, CONCAT(Customers.CustomerFirstName, " ",Customers.CustomerLastName) AS "Full Name", 
Orders.OrderID, Orders.TotalCost, Menu.MenuName, MenuItems.CourseName, MenuItems.StarterName FROM Customers 
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID INNER JOIN Menu ON Menu.MenuID = Orders.MenuID 
INNER JOIN MenuItems ON Menu.MenuItemsID = MenuItems.MenuItemsID WHERE TotalCost > 150 ORDER BY TotalCost ASC;