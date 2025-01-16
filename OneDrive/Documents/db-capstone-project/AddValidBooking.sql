DELIMITER //
CREATE PROCEDURE little_lemon_db.AddValidBooking(IN date DATE, IN number INT)
	BEGIN
		DECLARE var INT DEFAULT 0;
		START TRANSACTION;
		SELECT COUNT(*) INTO var
        FROM little_lemon_db.Bookings
        WHERE BookingDate=date AND TableNumber=number;
		IF (var > 0) THEN
			ROLLBACK;
			SELECT "Table is already booked" AS "Status";
		ELSE
			INSERT INTO Bookings(BookingDate, TableNumber, CustomerID)
		VALUES( date, number, 3);
			COMMIT;
			SELECT "Table has been booked" AS "Status";
		END IF;    
END; //
