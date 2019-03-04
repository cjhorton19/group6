-- create and select the database
CREATE DATABASE my_shoe_shop;  -- MySQL command

-- create the tables
CREATE TABLE categories (
  categoryID       INT(11)        NOT NULL,
  categoryName     VARCHAR(255)   NOT NULL,
  PRIMARY KEY (categoryID)
);

CREATE TABLE products (
  productID        INT(11)        NOT NULL,
  categoryID       INT(11)        NOT NULL,
  productCode      VARCHAR(10)    NOT NULL   UNIQUE,
  productName      VARCHAR(255)   NOT NULL,
  listPrice        DECIMAL(10,2)  NOT NULL,
  PRIMARY KEY (productID)
);

CREATE TABLE orders (
  orderID        INT(11)        NOT NULL,
  customerID     INT            NOT NULL,
  orderDate      DATETIME       NOT NULL,
  PRIMARY KEY (orderID)
);

-- insert data into the database
INSERT INTO categories VALUES
(1, 'Heels'),
(2, 'Sandals'),
(3, 'Boots');

INSERT INTO products (productID, categoryID, productCode, productName, listPrice) VALUES
(1, 1, 'trina-heel-black', 'Trina Heel - Black', '34.99'),
(2, 1, 'vivian-heel-nude', 'Vivian Heel - Nude', '299.00'),
(3, 1, 'tiffany-heel-orange', 'Tiffany Heel - Orange', '38.99'),
(4, 1, 'bianca-heel', 'Bianca Heel - Tan', '499.99'),
(5, 1, 'basic-lola-heel-red', 'Basic Lola Heel - Red', '699.99'),
(6, 1, 'selena-heel-black', 'Selena Heel - Black', '799.99'),
(7, 2, 'kat-slides-orange', 'Kat Slides - Orange', '21.99'),
(8, 2, 'becca-sandal-white', 'Becca Sandal - White', '17.99'),
(9, 2, 'robyn-sandal-black', 'Robyn Sandal - Black', '415.00'),
(10, 2, 'kristen-snake-sandal', 'Kristen Sandal - Snake', '799.99'),
(11, 1, 'patty-heel-olive', 'Patty Heel - Olive', '17.99'),
(12, 1, 'debbie-heel-leopard', 'Debbie Heel - Leopard', '21.99'),
(13, 3, 'jodie-bootie-olive', 'Jodie Bootie - Olive', '38.99'),
(14, 1, 'sadie-heel-red', 'Sadie Heel - Red', '34.99'),
(15, 3, 'jojo-lace-up-bootie-black', 'Jojo Lace Up Bootie - Black', '299.00'),
(16, 3, 'ari-lace-bootie-1', 'Ari Lace Bootie - Cognac', '415.00'),
(17, 3, 'kelly-combat-boot', 'Kelly Combat Boot', '799.99'),
(18, 3, 'jamie-bootie', 'Jamie Bootie', '499.99'),
(19, 3, 'jazzy-bootie-nude', 'Jazzy Bootie - Nude', '699.99'),
(20, 3, 'jazzy-bootie-leopard', 'Jazzy Bootie - Leopard', '799.99');


-- create the users and grant priveleges to those users
GRANT SELECT, INSERT, DELETE, UPDATE
ON my_guitar_shop1.*
TO mgs_user@localhost
IDENTIFIED BY 'pa55word';

GRANT SELECT
ON products
TO mgs_tester@localhost
IDENTIFIED BY 'pa55word';
