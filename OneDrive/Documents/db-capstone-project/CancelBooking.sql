DELIMITER //
CREATE PROCEDURE CancelBooking(IN cancel INT)
BEGIN 
	DELETE FROM Bookings 
    WHERE BookingID = cancel;
    SELECT "Booking canceled" AS "Confirmation";
END //