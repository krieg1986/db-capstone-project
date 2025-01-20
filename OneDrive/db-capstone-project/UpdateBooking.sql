DELIMITER //
CREATE PROCEDURE UpdateBooking(IN id INT, IN date DATE)
BEGIN
	UPDATE Bookings 
    SET BookingDate = date
    WHERE BookingID = id;
    SELECT CONCAT("Booking ",id," updated") AS "Confirmation";
    
END //