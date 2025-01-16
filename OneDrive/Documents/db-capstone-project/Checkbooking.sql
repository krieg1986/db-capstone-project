DELIMITER //
CREATE PROCEDURE CheckBooking(IN date DATE, IN number INT)
BEGIN
	DECLARE var VARCHAR(50);
    SELECT COUNT(*) INTO var
    FROM Bookings
    WHERE BookingDate = date AND TableNumber = number;
    IF (var > 0) THEN
    SELECT "Table is already booked" AS "Booking Status";
    ELSE
    SELECT "Table is not booked" AS "Booking Status";
    END IF;
END //

