-- CAST
SELECT CAST('42' AS SIGNED) AS cast_output;

-- CONVERT
SELECT CONVERT('3.14', DECIMAL(4, 2)) AS convert_output;

-- CONVERT_TZ
SELECT CONVERT_TZ('2023-08-31 12:00:00', 'UTC', 'America/New_York') AS convert_tz_output;

-- BINARY
SELECT BINARY 'hello' AS binary_output;

-- ASCII
SELECT ASCII('A') AS ascii_output;

-- UNHEX
SELECT UNHEX('48656C6C6F') AS unhex_output;

-- HEX
SELECT HEX('Hello') AS hex_output;

-- INET_ATON / INET_NTOA
SELECT INET_ATON('192.168.0.1') AS inet_aton_output, INET_NTOA(3232235521) AS inet_ntoa_output;

-- UUID_TO_BIN / BIN_TO_UUID
SELECT UUID_TO_BIN('6F9619FF-8B86-D011-B42D-00C04FC964FF') AS uuid_to_bin_output;

-- JSON_TO_TABLE
SELECT * FROM JSON_TO_TABLE('{"name":"John","age":30}', '$.*') AS jt;

-- JSON_ARRAYAGG
SELECT JSON_ARRAYAGG(name) AS json_arrayagg_output FROM people;

-- JSON_OBJECT
SELECT JSON_OBJECT('name', 'John', 'age', 30) AS json_object_output;

-- JSON_ARRAY
SELECT JSON_ARRAY('apple', 'banana', 'cherry') AS json_array_output;
