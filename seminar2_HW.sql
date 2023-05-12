USE seminar_2;

# ЗАДАНИЕ 1
CREATE TABLE sales(
id_sales INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
order_date VARCHAR(30) NOT NULL,
bucket INT);

INSERT sales(order_date, bucket)
VALUES
("2021-01-01", 128),
("2021-01-02", 133),
("2021-01-03", 99),
("2021-01-04", 271),
("2021-01-05", 457);

# ЗАДАНИЕ 2
# без внесения изменений в таблицу(вывод данных)
SELECT 
CASE 
	WHEN bucket < 100 THEN 'Less than 100' 
    WHEN bucket >= 100 AND bucket <= 300 THEN 'Between 100 and 300' 
    ELSE 'Greater than 300' 
END AS bucket_segment, COUNT(*) AS bucket_count FROM sales GROUP BY bucket_segment;

/*
# создали столбец "bucket_segment"
ALTER TABLE sales ADD COLUMN bucket_segment VARCHAR(30);

# внесение изменений в таблицу
UPDATE sales
SET bucket_segment =
	CASE 
		WHEN bucket < 100 THEN 'Less than 100'
		WHEN bucket >= 100 AND bucket <= 300 THEN 'Between 100 and 300'
		ELSE 'Greater than 300'
	END;

SELECT * FROM sales;
*/

# ЗАДАНИЕ 3
CREATE TABLE orders(
id_order INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
employeeid VARCHAR(30) NOT NULL,
amount FLOAT,
orderstatus VARCHAR(30) NOT NULL);

INSERT orders(employeeid, amount, orderstatus)
VALUES
("e03", 15.00, 'OPEN'),
("e01", 25.50, 'OPEN'),
("e05", 100.70, 'CLOSED'),
("e02", 22.18, 'OPEN'),
("e04", 9.50, 'CANCELLED'),
("e04", 99.99, 'OPEN');

SELECT id_order, orderstatus,
CASE orderstatus
	WHEN 'CLOSED' THEN 'Order is closed' 
    WHEN 'CANCELLED' THEN 'Order is cancelled' 
    ELSE 'Order is open state' 
END AS order_summary FROM orders; 
