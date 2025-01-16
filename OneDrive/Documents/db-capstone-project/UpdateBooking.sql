DELIMITER //
CREATE PROCEDURE UpdateBooking(IN id INT, IN date DATE)
BEGIN
	UPDATE Bookings 
    SET BookingDate = date
    WHERE BookingID = id;
    SELECT "Booking updated" AS "Confirmation";
    
END //