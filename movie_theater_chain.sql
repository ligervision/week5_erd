-- MOVIE THEATER CHAIN

-- CREATE TABLES

CREATE TABLE movie_theater (
	theater_number int,
	theater_name varchar(15),
	city varchar(15),
	address varchar(25),
	phone_number varchar(17),
	hours varchar(15),
	number_of_screens int,
	theater_capacity int
);

CREATE TABLE movie_ticket (
	movie_title varchar(30),
	theater_number int,
	screen_number int,
	scheduled_date varchar(15),
	scheduled_time varchar(15),
	ticket_price decimal(4,2),
	number_sold int
);

CREATE TABLE concessions (
	theater_number int,
	drink_name varchar(15),
	drink_size varchar(2),
	food_item varchar(15),
	concession_price decimal(4,2),
	item_inventory int
);

CREATE TABLE movie (
	movie_title varchar(30),
	production_studio varchar(15),
	director varchar(15),
	actor1 varchar(15),
	actor2 varchar(15),
	release_date varchar(15),
	number_of_theaters int
);

CREATE TABLE customer (
	age_group varchar(15),
	movie_title varchar(15)
);



-- INSERT DATA INTO pg_catalog.pg_stat_all_tables 

INSERT INTO movie_theater (theater_number, theater_name, city, address, phone_number, hours, number_of_screens, theater_capacity)
VALUES (001, 'Regal', 'New York, NY', '111 Madison Ave', '212-234-0001', '12 noon - 1 am', 8, 300);

INSERT INTO movie_theater (theater_number, theater_name, city, address, phone_number, hours, number_of_screens, theater_capacity)
VALUES (002, 'East End', 'Nashville, TN', '505 Broadway', '615-856-2121', '11 am - 2 am', 16, 350);

INSERT INTO movie_ticket (movie_title, theater_number, screen_number, scheduled_date, scheduled_time, ticket_price, number_sold)
VALUES ('Zardoz II', 001, 01, '06-01-2022', '1:30 pm', 09.50, 45);

INSERT INTO movie_ticket (movie_title, theater_number, screen_number, scheduled_date, scheduled_time, ticket_price, number_sold)
VALUES ('Bertha vs The Beans', 002, 10, '06-02-2022', '12:20 pm', 09.25, 55);

INSERT INTO concessions (theater_number, drink_name, drink_size, food_item, concession_price, item_inventory)
VALUES (001, 'Coke', 'L', 'drink', 02.50, 42);

INSERT INTO concessions (theater_number, drink_name, drink_size, food_item, concession_price, item_inventory)
VALUES (002, 'Coke', 'L', 'drink', 02.25, 56);

INSERT INTO concessions (theater_number, drink_name, drink_size, food_item, concession_price, item_inventory)
VALUES (001, '0', '0', 'nachos', 05.50, 27);

INSERT INTO concessions (theater_number, drink_name, drink_size, food_item, concession_price, item_inventory)
VALUES (002, 'Coke', 'L', 'nachos', 04.75, 33);

INSERT INTO movie (movie_title, production_studio, director, actor1, actor2, release_date, number_of_theaters)
VALUES ('Zardoz II', 'Field Day Films', 'Stan Twobrick', 'Tom Cruz', 'Penelope Kidman', '05-22-2022', 102);

INSERT INTO movie (movie_title, production_studio, director, actor1, actor2, release_date, number_of_theaters)
VALUES ('Bertha vs The Beans', 'New Zoo Films', 'Jean-Paul Bison', 'Willem Dafoe', 'Tony Danza', '05-22-2022', 89);

INSERT INTO customer (age_group, movie_title)
VALUES ('senior', 'Zardoz II');

INSERT INTO customer (age_group, movie_title)
VALUES ('adult', 'Zardoz II');


SELECT *
FROM movie;





