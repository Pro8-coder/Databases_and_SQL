CREATE DATABASE seminar_6; # создание БД

USE seminar_6;

# ЗАДАНИЕ 1
DELIMITER //
CREATE FUNCTION format_seconds(seconds INT)
RETURNS VARCHAR(100)
DETERMINISTIC
NO SQL
BEGIN
    DECLARE days INT;
    DECLARE hours INT;
    DECLARE minutes INT;
    DECLARE time_format VARCHAR(8);
    DECLARE formatted_time VARCHAR(100);
    
    SET days = FLOOR(seconds / 86400);
    SET hours = FLOOR((seconds - (days * 86400)) / 3600);
    SET minutes = FLOOR((seconds - (days * 86400) - (hours * 3600)) / 60);
    SET seconds = seconds - (days * 86400) - (hours * 3600) - (minutes * 60);
    
	SET time_format = LPAD(seconds % 60, 2, '0');
    SET formatted_time = CONCAT(days, ' days ', hours, ' hours ', minutes, ' minutes ', time_format, ' seconds');
    
    RETURN formatted_time;
END//
DELIMITER ;

SET GLOBAL log_bin_trust_function_creators = 1;

SELECT FORMAT_SECONDS(123456);

# ЗАДАНИЕ 2
# через остаток от деления (оператор %) и функцию MOD
SELECT * FROM (
  SELECT 1 AS num UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION
  SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION
  SELECT 9 UNION SELECT 10
) nums WHERE MOD(num, 2) = 0;

# через конструкцию BETWEEN с шагом 2
SELECT * FROM (
  SELECT 1 AS num UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION
  SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION
  SELECT 9 UNION SELECT 10
) nums WHERE num BETWEEN 2 AND 10 AND num % 2 = 0;
