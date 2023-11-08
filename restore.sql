-- Database: dvdrental

-- DROP DATABASE IF EXISTS dvdrental;

-- SELECT
--    first_name, last_name,
--    email 
-- FROM
--    customer;

-- SELECT * FROM customer;

--  SELECT 
--    first_name || ' ' || last_name,
--    email
-- FROM 
--    customer;	

-- SELECT 5 * 8 ;


-- SELECT 
--    first_name, 
--    last_name AS surname
-- FROM customer;


-- SELECT
--     first_name || ' ' || last_name AS full_name
-- FROM
--     customer;

-- OR---

-- SELECT
--     first_name || ' ' || last_name "full name"
-- FROM
--     customer;


-- SELECT
-- 	first_name,
-- 	last_name
-- FROM
-- 	customer
-- ORDER BY
-- 	first_name ASC;

-- SELECT
-- 	first_name,
-- 	last_name
-- FROM
-- 	customer
-- ORDER BY
-- 	first_name;

-- SELECT
--        first_name,
--        last_name
-- FROM
--        customer
-- ORDER BY
--        first_name DESC;

-- SELECT
-- 	first_name,
-- 	last_name
-- FROM
-- 	customer
-- ORDER BY
-- -- 	first_name ASC,
-- 	last_name DESC;

-- create a new table
-- CREATE TABLE sort_demo(
-- 	num INT
-- );

-- -- insert some data
-- INSERT INTO sort_demo(num)
-- VALUES(1),(2),(3),(null);

-- SELECT num
-- FROM sort_demo
-- ORDER BY num ;

-- SELECT num
-- FROM sort_demo
-- ORDER BY num NULLS FIRST;

-- SELECT
--    DISTINCT customer_id,first_name,last_name
-- FROM
--    customer

-- ORDER BY
--    last_name desc;

-- SELECT
-- 	last_name,
-- 	first_name
-- FROM
-- 	customer
-- WHERE
-- 	first_name = 'Mary' AND 
--         last_name = 'Smith';

-- SELECT
-- 	first_name,
-- 	last_name
-- FROM
-- 	customer
-- WHERE
-- 	last_name = 'Rodriguez' OR 
-- 	first_name = 'Adam';

-- SELECT
-- 	first_name,
-- 	last_name
-- FROM
-- 	customer
-- WHERE 
-- 	first_name IN ('Ann','Anne','Annie');

-- SELECT
-- 	first_name,
-- 	last_name
-- FROM
-- 	customer
-- WHERE 
-- 	first_name LIKE 'A%' AND
-- 	last_name LIKE 'H%'

-- SELECT
-- 	first_name,
-- 	LENGTH(first_name) name_length
-- FROM
-- 	customer
-- WHERE 
-- 	first_name LIKE 'A%' AND
-- 	LENGTH(first_name) BETWEEN 1 AND 9
-- ORDER BY
-- 	name_length;

-- SELECT 
-- 	first_name, 
-- 	last_name
-- FROM 
-- 	customer 
-- WHERE 
-- 	first_name LIKE 'Bra%' AND 
-- 	last_name != 'Motley';

-- SELECT
-- 	film_id,
-- 	title,
-- 	release_year
-- FROM
-- 	film
-- ORDER BY
-- 	film_id
-- LIMIT 9;

-- SELECT
-- 	film_id,
-- 	title,
-- 	release_year
-- FROM
-- 	film
-- ORDER BY
-- 	film_id
-- LIMIT 9 OFFSET 5;

-- SELECT
--     film_id,
--     title
-- FROM
--     film
-- ORDER BY
--     title 
-- FETCH FIRST ROW ONLY;

-- SELECT
--     film_id,
--     title
-- FROM
--     film
-- ORDER BY
--     title 
-- FETCH FIRST 5 ROW ONLY;

-- SELECT
--     film_id,
--     title
-- FROM
--     film
-- ORDER BY
--     title 
-- OFFSET 5 ROWS 
-- FETCH FIRST 5 ROW ONLY;


-- SELECT customer_id,
-- 	rental_id,
-- 	return_date
-- FROM
-- 	rental
-- WHERE
-- 	customer_id IN (1,8)
-- ORDER BY
-- 	return_date DESC;

-- SELECT
-- 	rental_id,
-- 	customer_id,
-- 	return_date
-- FROM
-- 	rental
-- WHERE
-- 	customer_id = 1 OR customer_id = 8
-- ORDER BY
-- 	return_date DESC;
	
	
-- 	SELECT
-- 	customer_id,
-- 	rental_id,
-- 	return_date
-- FROM
-- 	rental
-- WHERE
-- 	customer_id NOT IN (1, 3);
	
-- SELECT
-- 	customer_id,
-- 	payment_id,
-- 	amount
-- FROM
-- 	payment
-- WHERE
-- 	customer_id BETWEEN 1 AND 10;

-- SELECT
-- 	first_name,
-- 	last_name
-- FROM
-- 	customer
-- WHERE
-- 	first_name LIKE '_er%'
-- ORDER BY 
--         first_name;
	
-- SELECT
-- 	first_name,
-- 	last_name
-- FROM
-- 	customer
-- WHERE
-- 	first_name NOT LIKE 'e%'
-- ORDER BY 
--         first_name

-- SELECT
-- 	first_name,
-- 	last_name
-- FROM
-- 	customer
-- WHERE
-- 	first_name ILIKE 'e%';
	
-- CREATE TABLE contacts(
--     id SERIAL,
--     first_name VARCHAR(50) NOT NULL,
--     last_name VARCHAR(50) NOT NULL,
--     email VARCHAR(255) NOT NULL,
--     phone VARCHAR(15),
--     PRIMARY KEY (id)
-- );
	
-- INSERT INTO contacts(first_name, last_name, email, phone)
-- VALUES ('John','Doe','john.doe@example.com',NULL),
--     ('Lily','Bush','lily.bush@example.com','(408-234-2764)');

-- 	SELECT
--     id,
--     first_name,
--     last_name,
--     email,
--     phone
-- FROM
--     contacts
-- WHERE
--     phone IS NULL;
	
	
-- 	SELECT
--     id,
--     first_name,
--     last_name,
--     email,
--     phone
-- FROM
--     contacts
-- WHERE
--     phone IS NOT NULL;
------------------------------------------------------------------------------------------------
--                                        inner join
-- ---------------------------------------------------------------------------------------------
-- SELECT
-- 	customer.customer_id,
-- 	first_name,
-- 	last_name,
-- 	amount,
-- 	payment_date
-- FROM
-- 	customer
-- INNER JOIN payment 
--     ON payment.customer_id = customer.customer_id
-- ORDER BY payment_date;


-- SELECT
-- 	c.customer_id,
-- 	first_name,
-- 	last_name,
-- 	email,
-- 	amount,
-- 	payment_date
-- FROM
-- 	customer c
-- INNER JOIN payment p 
--     ON p.customer_id = c.customer_id
-- WHERE
--     c.customer_id = 2;

-- SELECT
-- 	c.customer_id,
-- 	c.first_name customer_first_name,
-- 	c.last_name customer_last_name,
-- 	s.first_name staff_first_name,
-- 	s.last_name staff_last_name,
-- 	amount,
-- 	payment_date
-- FROM
-- 	customer c
-- INNER JOIN payment p 
--     ON p.customer_id = c.customer_id
-- INNER JOIN staff s 
--     ON p.staff_id = s.staff_id
-- ORDER BY payment_date;

------------------------------------------------------------------------------------------------------
--                                                  left join
------------------------------------------------------------------------------------------------------	
-- SELECT
-- 	film.film_id,
-- 	title,
-- 	inventory_id
-- FROM
-- 	film
-- LEFT JOIN inventory 
--     ON inventory.film_id = film.film_id
-- ORDER BY title;

------------------------------------------------------------------------------------------------------
--                                                    insert multiple value
------------------------------------------------------------------------------------------------------

-- DROP TABLE IF EXISTS links;

-- CREATE TABLE links (
--     id SERIAL PRIMARY KEY,
--     url VARCHAR(255) NOT NULL,
--     name VARCHAR(255) NOT NULL,
--     description VARCHAR(255)
-- );

-- INSERT INTO 
--     links(url,name, description)
-- VALUES
--     ('https://duckduckgo.com/','DuckDuckGo','Privacy & Simplified Search Engine'),
--     ('https://swisscows.com/','Swisscows','Privacy safe WEB-search')
-- RETURNING *;

---------------------------------------------------------------------------------------------------
--                                                  update data in table
---------------------------------------------------------------------------------------------------

-- DROP TABLE IF EXISTS courses;

-- CREATE TABLE courses(
-- 	course_id serial primary key,
-- 	course_name VARCHAR(255) NOT NULL,
-- 	description VARCHAR(500),
-- 	published_date date
-- );

-- INSERT INTO 
-- 	courses(course_name, description, published_date)
-- VALUES
-- 	('PostgreSQL for Developers','A complete PostgreSQL for Developers','2020-07-13'),
-- 	('PostgreSQL Admininstration','A PostgreSQL Guide for DBA',NULL),
-- 	('PostgreSQL High Performance',NULL,NULL),
-- 	('PostgreSQL Bootcamp','Learn PostgreSQL via Bootcamp','2013-07-11'),
-- 	('Mastering PostgreSQL','Mastering PostgreSQL in 21 Days','2012-06-30')
-- 	returning *;

-- UPDATE courses
-- SET published_date = '2024-08-01' 
-- WHERE course_id = 3
-- returning *;

---------------------------------------------------------------------------------------------------
--                                                  delete data in table
---------------------------------------------------------------------------------------------------

-- DROP TABLE IF EXISTS links;

-- CREATE TABLE links (
--     id serial PRIMARY KEY,
--     url varchar(255) NOT NULL,
--     name varchar(255) NOT NULL,
--     description varchar(255),
--     rel varchar(10),
--     last_update date DEFAULT now()
-- );

-- INSERT INTO  
--    links 
-- VALUES 
--    ('1', 'https://www.postgresqltutorial.com', 'PostgreSQL Tutorial', 'Learn PostgreSQL fast and easy', 'follow', '2013-06-02'),
--    ('2', 'http://www.oreilly.com', 'O''Reilly Media', 'O''Reilly Media', 'nofollow', '2013-06-02'),
--    ('3', 'http://www.google.com', 'Google', 'Google', 'nofollow', '2013-06-02'),
--    ('4', 'http://www.yahoo.com', 'Yahoo', 'Yahoo', 'nofollow', '2013-06-02'),
--    ('5', 'http://www.bing.com', 'Bing', 'Bing', 'nofollow', '2013-06-02'),
--    ('6', 'http://www.facebook.com', 'Facebook', 'Facebook', 'nofollow', '2013-06-01'),
--    ('7', 'https://www.tumblr.com/', 'Tumblr', 'Tumblr', 'nofollow', '2013-06-02'),
--    ('8', 'http://www.postgresql.org', 'PostgreSQL', 'PostgreSQL', 'nofollow', '2013-06-02')
--    returning *
--    ;
-- DELETE FROM links
-- WHERE id = 8;

-- DELETE FROM links;

-- DELETE FROM links
-- WHERE id IN (2,4)
-- RETURNING *;

---------------------------------------------------------------------------------------------------
--                                                  delete-join data in table
---------------------------------------------------------------------------------------------------
-- DROP TABLE IF EXISTS contacts;
-- CREATE TABLE contacts(
--    contact_id serial PRIMARY KEY,
--    first_name varchar(50) NOT NULL,
--    last_name varchar(50) NOT NULL,
--    phone varchar(15) NOT NULL
-- );


-- DROP TABLE IF EXISTS blacklist;
-- CREATE TABLE blacklist(
--     phone varchar(15) PRIMARY KEY
-- );


-- INSERT INTO contacts(first_name, last_name, phone)
-- VALUES ('John','Doe','(408)-523-9874'),
--        ('Jane','Doe','(408)-511-9876'),
--        ('Lily','Bush','(408)-124-9221');


-- INSERT INTO blacklist(phone)
-- VALUES ('(408)-523-9874'),
--        ('(408)-511-9876');

-- DELETE FROM contacts 
-- USING blacklist
-- WHERE contacts.phone = blacklist.phone RETURNING *;

-- SELECT CURRENT_DATE;
