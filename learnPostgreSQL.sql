-- Here I have created a database for an online book store using PostgreSQL
-- and queried the database for useful information.

------------creating tables--------------

-- author table
CREATE TABLE IF NOT EXISTS author(
	author_id INT PRIMARY KEY,
	author_name VARCHAR(100)
);

-- publisher table
CREATE TABLE IF NOT EXISTS publisher(
	publisher_id INT PRIMARY KEY,
	publisher_name VARCHAR(100)
);

-- book_language table
CREATE TABLE IF NOT EXISTS book_language(
	language_id INT PRIMARY KEY,
	language_code VARCHAR(50) UNIQUE,
	language_name VARCHAR(50)
);

-- book table
CREATE TABLE book(
	book_id INT PRIMARY KEY,
	title VARCHAR(100),
	isbn13 VARCHAR(50) UNIQUE,
	num_pages INT,
	publication_date DATE
);

-- adding foreign keys to book table
ALTER TABLE book ADD publisher_id INT;

ALTER TABLE book
ADD CONSTRAINT fk_publisher_id FOREIGN KEY(publisher_id)
	REFERENCES publisher(publisher_id)
	ON DELETE SET NULL
	ON UPDATE NO ACTION;

ALTER TABLE book ADD language_id INT;

ALTER TABLE book
ADD CONSTRAINT fk_language_id FOREIGN KEY(language_id)
	REFERENCES book_language(language_id)
	ON DELETE SET NULL
	ON UPDATE NO ACTION;

-- book_author table
CREATE TABLE book_author(
	book_id INT REFERENCES book(book_id) NOT NULL,
	author_id INT REFERENCES author(author_id) NOT NULL,
	PRIMARY KEY (book_id, author_id)
);

-- customer table
CREATE TABLE customer(
	customer_id INT PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(100)
);

-- country table
CREATE TABLE COUNTRY(
	country_id INT PRIMARY KEY,
	country_name VARCHAR(50)
);

-- address table
CREATE TABLE address(
	address_id INT PRIMARY KEY,
	street_name VARCHAR(50),
	city VARCHAR(50),
	country_id INT REFERENCES country(country_id)
);

-- customer_address table
CREATE TABLE customer_address(
	customer_id INT REFERENCES customer(customer_id) NOT NULL,
	address_id INT REFERENCES address(address_id) NOT NULL,
	PRIMARY KEY(customer_id, address_id)
);

-- shipping_method table
CREATE TABLE shipping_method(
	method_id INT PRIMARY KEY,
	method_name VARCHAR(100),
	cost INT
);

-- cust_order table
CREATE TABLE cust_order(
	order_id INT PRIMARY KEY,
	order_date TIMESTAMP,
	customer_id INT REFERENCES customer(customer_id),
	shipping_method_id INT REFERENCES shipping_method(method_id),
	dest_address_id INT REFERENCES address(address_id)
);

-- order_line table
CREATE TABLE order_line(
	line_id INT PRIMARY KEY,
	order_id INT REFERENCES cust_order(order_id),
	book_id INT REFERENCES book(book_id),
	price INT
);

------------------ inserting values into tables -----------------

-- publisher
INSERT INTO publisher(publisher_id, publisher_name)
VALUES 
	(1, 'Replika Press Pvt. Ltd.'),
	(2, 'Hay House Publishers');

-- book_language
INSERT INTO book_language(language_id, language_code, language_name)
VALUES
	(1, 'ENG', 'English'),
	(2, 'NP', 'Nepali');

-- author
INSERT INTO author(author_id, author_name)
VALUES
	(1, 'Sydney Sheldon'),
	(2, 'Colleen Hoover'),
	(3, 'John Green'),
	(4, 'JK Rowling'),
 (5, 'Vex King')
RETURNING *;

-- book
INSERT INTO book(book_id, title, isbn13, num_pages, publication_date, publisher_id, language_id)
VALUES
	(1, 'It Starts With Us', 1, 500, '2022-08-08', 1, 1)
	(2, 'It Ends With Us', 2, 600, '2021-08-08', 1, 1),
	(3, 'Good Vibes, Good Life', 3, 300, '2018-08-05', 2, 1);
	
-- author
INSERT INTO book_author(book_id, author_id)
VALUES
	(1, 2),
	(2, 2),
	(3, 5)
RETURNING *;

-- book author
INSERT INTO book_author(book_id, author_id)
VALUES
	(1, 2),
	(2, 2),
	(3, 5)
RETURNING *;

-- country
INSERT INTO COUNTRY(country_id, country_name)
VALUES
	(1, 'Nepal'),
	(2, 'China'),
	(3, 'India')
RETURNING *;

-- address
INSERT INTO address(address_id, street_name, city, country_id)
VALUES
	(1, 'Sasukhwat Galli', 'Kathmandu', 1),
	(2, 'Hattisar Sadak', 'Kathmandu', 1)
RETURNING *;


-- customer
INSERT INTO customer(customer_id, first_name, last_name, email)
VALUES
	(1, 'Pranima', 'Kansakar', 'pranima@gmail.com'),
	(2, 'Binisha', 'Shrestha', 'binisha@gmail.com')
RETURNING *;

-- customer address
INSERT INTO customer_address(customer_id, address_id)
VALUES
	(1, 1),
	(2, 2)
RETURNING *;

-- shipping_method
INSERT INTO shipping_method(method_id, method_name, cost)
VALUES
	(1, 'Cash on delivery', 90),
	(2, 'Onlie payment', 60)
RETURNING *;

-- customer order
INSERT INTO cust_order(order_id, order_date, customer_id, shipping_method_id, dest_address_id)
VALUES
	(1, '2023-04-12 04:05:06', 1, 1, 1),
	(2, '2023-04-13 08:05:06', 2, 2, 2)
RETURNING *;

-- order line
INSERT INTO order_line(line_id, order_id, book_id, price)
VALUES
	(1, 1, 1, 540),
	(2, 1, 2, 650),
	(3, 2, 3, 380)
RETURNING *;

------- querying bookstore database -------

-- 1. Display customer id, name and title of book he/she ordered.
SELECT customer.customer_id, customer.first_name, customer.last_name, book.title
FROM customer, cust_order, order_line, book
WHERE cust_order.customer_id = customer.customer_id 
AND cust_order.order_id = order_line.order_id
AND order_line.book_id = book.book_id;

--  customer_id | first_name | last_name |         title
-- -------------+------------+-----------+-----------------------
--            1 | Pranima    | Kansakar  | It Starts With Us
--            1 | Pranima    | Kansakar  | It Ends With Us
--            2 | Binisha    | Shrestha  | Good Vibes, Good Life
-- (3 rows)

-- 2. display books written by Colleen Hoover
SELECT book.title
FROM  book, author, book_author
WHERE book.book_id = book_author.book_id
AND author.author_id = book_author.author_id
AND author.author_name = 'Colleen Hoover';

--        title
-- -------------------
--  It Starts With Us
--  It Ends With Us
-- (2 rows)

-- 3. display all books in the bookstore
SELECT title FROM book;

--          title
-- -----------------------
--  It Starts With Us
--  It Ends With Us
--  Good Vibes, Good Life
-- (3 rows)