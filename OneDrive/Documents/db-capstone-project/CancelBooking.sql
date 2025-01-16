DELIMITER //
CREATE PROCEDURE CancelBooking(IN cancel INT)
BEGIN 
	DELETE FROM Bookings 
    WHERE BookingID = cancel;
    SELECT CONCAT("Booking ",cancel," canceled") AS "Confirmation";
END //