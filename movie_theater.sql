
-- I made these tables connected as so because
-- the customer_id has to go through the tickets and conssetions
-- the ticket has a movie_id because you have to know what movies
--  your seeing.  the connssesions has a ticket_id because normally you have to 
-- have a movie ticket to buy snacks(would be werid if you didn't)

CREATE TABLE customer (
  customer_id SERIAL,
  first_name VARCHAR(20),
  last_name VARCHAR(20),
  email VARCHAR(30),
  phone_number VARCHAR(20),
  PRIMARY KEY (customer_id)
);

CREATE TABLE movie (
  movie_id SERIAL,
  title VARCHAR(30),
  rating VARCHAR(8),
  PRIMARY KEY (movie_id)
);

CREATE TABLE ticket (
  ticket_id SERIAL,
  price INTEGER,
  quantity INTEGER,
  customert_id INTEGER,
  movie_id INTEGER,
  PRIMARY KEY (ticket_id),
  FOREIGN KEY (customert_id)
  REFERENCES customer(customer_id),
  FOREIGN KEY (movie_id)
  REFERENCES movie(movie_id)
);

CREATE TABLE concession (
  concession_id SERIAL,
  amount INTEGER,
  quantity INTEGER,
  customer_id INTEGER,
  ticket_id INTEGER,
  PRIMARY KEY (concession_id),
  FOREIGN KEY (customer_id)
  REFERENCES customer(customer_id),
  FOREIGN KEY (ticket_id)
  REFERENCES ticket(ticket_id)
);


SELECT *
FROM movie;


INSERT INTO movie(
	title,
	rating
)VALUES(
	'easerhead',
	'PG-13'
);

INSERT INTO movie(
	title,
	rating
)VALUES(
	'MANDY',
	'R'
);

ALTER TABLE movie
ADD COLUMN runtime INTEGER;


UPDATE movie
SET runtime = 129;






