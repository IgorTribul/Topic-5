CREATE TABLE IF NOT EXISTS flights (
   id SERIAL PRIMARY KEY,
   from_city VARCHAR(20),
   to_city VARCHAR(20));
CREATE TABLE IF NOT EXISTS cities (
   id SERIAL PRIMARY KEY,
   label VARCHAR(20),
   name VARCHAR(20));
SELECT (SELECT name FROM cities WHERE label=from_city) AS 'from', (SELECT name FROM cities WHERE label=to_city) AS 'to' FROM flights;
