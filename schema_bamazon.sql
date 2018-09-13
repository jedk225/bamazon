DROP DATABASE IF EXISTS bamazon;

CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
	item_id INTEGER(255) NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    department_name VARCHAR(45) NOT NULL,
    price INTEGER default 0,
	stock_quantity INTEGER default 0,
    PRIMARY KEY (item_id)
    
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
    VALUES ("PS4", "Electronics", 399, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity)
    VALUES ("XBox One", "Electronics", 499, 75);

INSERT INTO products (product_name, department_name, price, stock_quantity)
    VALUES ("iPhone XS Max", "Electronics", 1099, 250);

INSERT INTO products (product_name, department_name, price, stock_quantity)
    VALUES ("Apple Watch Series 4", "Electronics", 399, 60);

INSERT INTO products (product_name, department_name, price, stock_quantity)
    VALUES ("Banana", "Produce", 1, 999);

INSERT INTO products (product_name, department_name, price, stock_quantity)
    VALUES ("Todd Gurley Jersey", "Apparel", 149, 50);

INSERT INTO products (product_name, department_name, price, stock_quantity)
    VALUES ("Romper", "Apparel", 49, 55);

INSERT INTO products (product_name, department_name, price, stock_quantity)
    VALUES ("Frozen BluRay/Digital HD", "Entertainment", 20, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity)
    VALUES ("Harry Potter Collection", "Entertainment", 80, 20);

INSERT INTO products (product_name, department_name, price, stock_quantity)
    VALUES ("Male Romper", "Apparel", 29, 5);

SELECT * FROM products;