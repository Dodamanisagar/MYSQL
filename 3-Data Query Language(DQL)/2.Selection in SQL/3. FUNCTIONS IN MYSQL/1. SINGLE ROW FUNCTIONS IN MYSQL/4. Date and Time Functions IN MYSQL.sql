-- Returns the current date and time
SELECT NOW(); -- Result: Current date and time

-- Returns the current date (without time)
SELECT CURDATE(); -- Result: Current date

-- Returns the current time (without date)
SELECT CURTIME(); -- Result: Current time

-- Extracts the date part from a datetime value
SELECT DATE('2023-08-31 15:30:00'); -- Result: "2023-08-31"

-- Extracts the time part from a datetime value
SELECT TIME('2023-08-31 15:30:00'); -- Result: "15:30:00"

-- Extracts the year from a date or datetime value
SELECT YEAR('2023-08-31'); -- Result: 2023

-- Extracts the month from a date or datetime value
SELECT MONTH('2023-08-31'); -- Result: 8

-- Extracts the day of the month from a date or datetime value
SELECT DAY('2023-08-31'); -- Result: 31

-- Extracts the hour from a time or datetime value
SELECT HOUR('15:30:00'); -- Result: 15

-- Extracts the minute from a time or datetime value
SELECT MINUTE('15:30:00'); -- Result: 30

-- Extracts the second from a time or datetime value
SELECT SECOND('15:30:45'); -- Result: 45

-- Calculates the difference between two dates
SELECT DATEDIFF('2023-01-01', '2022-01-01'); -- Result: 365

-- Adds or subtracts a specified time interval to/from a date
SELECT DATE_ADD('2023-08-31', INTERVAL 1 MONTH); -- Result: "2023-09-30"

-- Calculates the difference between two datetime values in a specified unit
SELECT TIMESTAMPDIFF(DAY, '2023-01-01', '2023-01-10'); -- Result: 9

-- Formats a date or datetime value
SELECT DATE_FORMAT(NOW(), '%Y-%m-%d'); -- Result: "2023-08-31"
