DELIMITER //
CREATE PROCEDURE AddBooking( IN booking INT, IN date Date, IN number INT, IN customer INT)
BEGIN
	INSERT INTO Bookings(BookingID, BookingDate,  TableNumber,  CustomerID)
    VALUES
    ( booking, date, number,  customer);
    
    SELECT "New booking added" AS "Confirmation";
    
END//