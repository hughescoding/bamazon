DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
item_id INTEGER NOT NULL,
product_name VARCHAR(100) NOT NULL,
department_name VARCHAR(100) NOT NULL,
price DECIMAL(6,2) NOT NULL,
stock_quantity INTEGER NOT NULL,
PRIMARY KEY (item_id)
);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUES (
10001,
'Apple iPhone 6, GSM Unlocked, 64GB - Space Gray (Refurbished)',
'Electronics',
199.99,
150);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUES (
10002,
'Apple iPhone 7, GSM Unlocked, 32GB - Rose Gold (Refurbished)',
'Electronics',
290.00,
45);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUES (
10003,
'Apple iPhone X, Fully Unlocked 5.8", 64 GB - Silver',
'Electronics',
1068.98,
1000);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUES (
10004,
'Monster Energy Juice Monster Pipeline Punch, Energy Drink, 16 Ounce 24-pack',
'Foods',
47.76,
500);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUES (
10005,
'Juice Monster Mango Loco, Energy Drink, 16 Ounce (Pack of 24)',
'Foods',
49.70,
500);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUES (
10006,
'Cracking the Coding Interview: 189 Programming Questions and Solutions 6th Edition',
'Books',
38.00,
10);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUES (
10007,
'Coding All-in-One For Dummies',
'Books',
25.47,
2);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUES (
10008,
'Retro SQL T-Shirt',
'Apparel',
19.99,
10);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUES (
10009,
'Retro JavaScript T-Shirt',
'Apparel',
22.99,
15);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUES (
10010,
'Git Orange Logo T-Shirt Official',
'Apparel',
22.99,
25);