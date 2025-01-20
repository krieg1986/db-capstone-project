DELIMITER //
CREATE PROCEDURE little_lemon_db.AddValidBooking(IN date DATE, IN number INT, IN customer INT)
	BEGIN
		DECLARE var INT DEFAULT 0;
		START TRANSACTION;
		SELECT COUNT(*) INTO var
        FROM little_lemon_db.Bookings
        WHERE BookingDate=date AND TableNumber=number;
		IF (var > 0) THEN
			ROLLBACK;
			SELECT CONCAT("Table ",number, " is already booked - booking cancelled") AS "Booking status";
		ELSE
			INSERT INTO Bookings(BookingDate, TableNumber, CustomerID)
		VALUES( date, number, customer);
			COMMIT;
			SELECT CONCAT("Table ",number," has been booked") AS "Booking status";
		END IF;    
END; //
