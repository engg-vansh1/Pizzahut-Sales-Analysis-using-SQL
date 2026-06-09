CREATE DATABASE pizzahut;

use pizzahut;
show tables;

CREATE TABLE orders (
	order_id int not null,
    order_date date,
    order_time time
);

CREATE TABLE order_details (
	order_details_id int not null,
    order_id int not null,
    pizza_id varchar(50) not null,
    quantity int not null
);