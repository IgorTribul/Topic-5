SELECT DISTINCT (SELECT name FROM users WHERE id=user_id) AS 'name' FROM orders;
*/OR/*
SELECT COUNT(user_id) 'number of orders', (SELECT name FROM users WHERE id=user_id) AS 'name' FROM orders GROUP BY user_id;
