TABLE-PERSON
Create a table called person that records a person's id, name, age, height ( in cm ), city, favorite_color. 
id should be an auto-incrementing id/primary key - Use type: SERIAL
Add 5 different people into the person database. 
Remember to not include the person_id because it should auto-increment.
List all the people in the person table by height from tallest to shortest.
List all the people in the person table by height from shortest to tallest.
List all the people in the person table by age from oldest to youngest.
List all the people in the person table older than age 20.
List all the people in the person table that are exactly 18.
List all the people in the person table that are less than 20 and older than 30.
List all the people in the person table that are not 27 (Use not equals).
List all the people in the person table where their favorite color is not red.
List all the people in the person table where their favorite color is not red and is not blue.
List all the people in the person table where their favorite color is orange or green.
List all the people in the person table where their favorite color is orange, green or blue (use IN).
List all the people in the person table where their favorite color is yellow or purple (use IN).

CREATE Table person (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  age INTEGER NOT NULL,
  height INTEGER NOT NULL,
  city VARCHAR(50) NOT NULL,
  favorite_color VARCHAR(50) NOT NULL
)

INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Josef', 18, 73, 'North Richland Hills', 'Blue'),
	   ('Hailey', 18, 2, 'North Richland Hills', 'Green'),
       ('Robert', 49, 70, 'North Richland Hills', 'Yellow'),
       ('Karen', 46, 50, 'North Richland Hills', 'Red'),
       ('Jaden', 15, 80, 'North Richland Hills', 'Orange');
    
    
-List all the people in the person table by height from tallest to shortest.
    SELECT * FROM person
    ORDER BY height DESC

-List all the people in the person table by height from shortest to tallest.
    SELECT * FROM person
    ORDER BY height ASC
-List all the people in the person table by age from oldest to youngest.
    SELECT * FROM person
    ORDER BY age DESC
-List all the people in the person table older than age 20.
    SELECT * FROM person
    WHERE age > 20
-List all the people in the person table that are exactly 18.
    SELECT * FROM person
    WHERE age = 18
-List all the people in the person table that are less than 20 and older than 30.
    SELECT * FROM person
    WHERE age > 30 OR age < 20
-List all the people in the person table that are not 27 (Use not equals).
    SELECT * FROM person
    WHERE age != 27
-List all the people in the person table where their favorite color is not red.
    SELECT * FROM person
    WHERE favorite_color != 'Red'
-List all the people in the person table where their favorite color is not red and is not blue.
    SELECT * FROM person
    WHERE favorite_color != 'Red' AND favorite_color !='Blue'
-List all the people in the person table where their favorite color is orange or green.
    SELECT * FROM person
    WHERE favorite_color IN ('Orange', 'Green')
-List all the people in the person table where their favorite color is orange, green or blue (use IN).
    SELECT * FROM person
    WHERE favorite_color IN ('Orange', 'Green', 'Blue')
-List all the people in the person table where their favorite color is yellow or purple (use IN).
    SELECT * FROM person
    WHERE favorite_color IN ('Yellow', 'Purple')  



Table - orders


Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
Add 5 orders to the orders table. 
Make orders for at least two different people.
person_id should be different for different people.
INSERT INTO orders (person_id, product_name, product_price, quantity)

VALUES (1, 'Duct Tape', 4.99, 3),
	   (1, 'Tarp', 42.99, 15),
       (1, 'Spongebob Mask', 35.99, 1),
       (1, 'Cucumbers', 0.99, 25),
       (2, 'Nerf Gun', 19.99, 8);
-Select all the records from the orders table.
    SELECT * FROM orders
-Calculate the total number of products ordered.
    SELECT sum(quantity) FROM orders
-Calculate the total order price.
    SELECT sum(product_price * quantity) FROM orders
-Calculate the total order price by a single person_id.
    SELECT sum(product_price * quantity) FROM orders
    WHERE person_id = 1;

    SELECT sum(product_price * quantity) FROM orders
    WHERE person_id = 2;





Table - artist

Instructions
-Add 3 new artists to the artist table. ( It's already created )
INSERT INTO artist(name)
VALUES ('Imagine Dragons'),
	   ('One Republic'),
       ('Passion Pit');

-Select 10 artists in reverse alphabetical order.
    SELECT * FROM artist
    ORDER BY name DESC
    LIMIT 10
-Select 5 artists in alphabetical order.
    SELECT * FROM artist
    ORDER BY name ASC
    LIMIT 5
-Select all artists that start with the word 'Black'.
    SELECT * FROM artist
    WHERE name LIKE 'Black%'
-Select all artists that contain the word 'Black'.
    SELECT * FROM artist
    WHERE name LIKE '%Black%'







    
Table - employee
Instructions
-List all employee first and last names only that live in Calgary.
    SELECT first_name, last_name FROM employee
    WHERE city LIKE 'Calgary'
-Find the birthdate for the youngest employee.
    SELECT first_name, last_name FROM employee
    ORDER BY birth_date DESC
-Find the birthdate for the oldest employee.
    SELECT first_name, last_name FROM employee
    ORDER BY birth_date ASC
-Find everyone that reports to Nancy Edwards (Use the ReportsTo column).  2
    SELECT first_name, last_name, reports_to FROM employee
    WHERE reports_to = 2
-You will need to query the employee table to find the Id for Nancy Edwards
    SELECT employee_id FROM employee
    WHERE first_name LIKE 'Nancy'
-Count how many people live in Lethbridge.
    SELECT COUNT(city) FROM employee
    WHERE city = 'Lethbridge'






    
Table - invoice
Instructions
-Count how many orders were made from the USA.
    SELECT COUNT(billing_country) FROM invoice
    WHERE billing_country = 'USA'
-Find the largest order total amount.
    SELECT * FROM invoice
    ORDER BY total DESC
-Find the smallest order total amount.
    SELECT * FROM invoice
    ORDER BY total ASC
-Find all orders bigger than $5.
    SELECT * FROM invoice
    WHERE total > 5
-Count how many orders were smaller than $5.
    SELECT COUNT(total) FROM invoice
    WHERE total > 5
-Count how many orders were in CA, TX, or AZ (use IN).
    SELECT COUNT(billing_state) FROM invoice
    WHERE billing_state IN ('CA', 'TX', 'AZ')
-Get the average total of the orders.
    SELECT AVG(total) FROM invoice
-Get the total sum of the orders.
    SELECT sum(total) FROM invoice