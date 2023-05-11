USE seminar_1;

SELECT model, brand, price
FROM mobile_phone
WHERE quantity > 2;

SELECT *
FROM mobile_phone
WHERE brand = "Samsung"