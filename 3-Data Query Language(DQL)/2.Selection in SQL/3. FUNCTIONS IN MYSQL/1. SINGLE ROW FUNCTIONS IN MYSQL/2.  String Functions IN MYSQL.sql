-- CONCAT: Concatenates two or more strings together.
SELECT CONCAT('Hello', ' ', 'World') AS Concatenated;

-- LENGTH / CHAR_LENGTH: Returns the length of a string.
SELECT LENGTH('apple') AS Length;

-- UPPER: Converts a string to uppercase.
SELECT UPPER('hello') AS Uppercase;

-- LOWER: Converts a string to lowercase.
SELECT LOWER('WORLD') AS Lowercase;

-- SUBSTRING: Extracts a portion of a string.
SELECT SUBSTRING('banana', 2, 3) AS Substring;

-- LEFT: Returns a specified number of characters from the left of a string.
SELECT LEFT('example', 3) AS LeftS;

-- RIGHT: Returns a specified number of characters from the right of a string.
SELECT RIGHT('example', 4) AS RightS;

-- REPLACE: Replaces occurrences of a substring within a string.
SELECT REPLACE('Hello, World!', 'World', 'Universe') AS Replaced;

-- TRIM: Removes leading and trailing spaces or specified characters from a string.
SELECT TRIM('   hello   ') AS Trimmed;

-- LTRIM: Removes leading spaces or specified characters from a string.
SELECT LTRIM('   hello') AS LeftTrimmed;

-- RTRIM: Removes trailing spaces or specified characters from a string.
SELECT RTRIM('hello   ') AS RightTrimmed;

-- CHAR: Converts an ASCII code to a character.
SELECT CHAR(65) AS CharacterS;

-- CONV: Converts a number from one base to another.
SELECT CONV('1A', 16, 10) AS Converted;

-- LOCATE / INSTR: Finds the position of a substring within a string.
SELECT LOCATE('needle', 'haystackneedle') AS Position;

-- REVERSE: Reverses the characters in a string.
SELECT REVERSE('abcdef') AS Reversed;

-- FORMAT: Formats a number with commas and a specified number of decimal places.
SELECT FORMAT(12345.6789, 2) AS Formatted;

-- INSERT: Inserts a substring into a string at a specified position.
SELECT INSERT('Hello, World!', 8, 0, 'Amazing ') AS Inserted;

-- ASCII: Returns the ASCII value of the first character in a string.
SELECT ASCII('A') AS AsciiValue;

-- HEX: Converts a binary value to a hexadecimal string.
SELECT HEX('Hello') AS HexValue;

-- UNHEX: Converts a hexadecimal string to binary data.
SELECT UNHEX('48656C6C6F') AS UnhexValue;
