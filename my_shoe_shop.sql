-- create and select the database
CREATE DATABASE my_shoe_shop;  -- MySQL command
USE my_shoe_shop;

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
(2, 1, 'vivian-heel-nude', 'Vivian Heel - Nude', '38.99'),
(3, 1, 'tiffany-heel-orange', 'Tiffany Heel - Orange', '38.99'),
(4, 1, 'bianca-heel', 'Bianca Heel - Tan', '38.99'),
(5, 1, 'basic-lola-heel-red', 'Basic Lola Heel - Red', '29.00'),
(6, 1, 'selena-heel-black', 'Selena Heel - Black', '34.99'),
(7, 2, 'kat-slides-orange', 'Kat Slides - Orange', '21.99'),
(8, 2, 'becca-sandal-white', 'Becca Sandal - White', '17.99'),
(9, 2, 'robyn-sandal-black', 'Robyn Sandal - Black', '20.99'),
(10, 2, 'kristen-snake-sandal', 'Kristen Sandal - Snake', '14.99'),
(11, 1, 'patty-heel-olive', 'Patty Heel - Olive', '17.99'),
(12, 1, 'debbie-heel-leopard', 'Debbie Heel - Leopard', '21.99'),
(13, 3, 'jodie-bootie-olive', 'Jodie Bootie - Olive', '38.99'),
(14, 1, 'sadie-heel-red', 'Sadie Heel - Red', '34.99'),
(15, 3, 'jojo-lace-up-bootie-black', 'Jojo Lace Up Bootie - Black', '36.99'),
(16, 3, 'ari-lace-bootie-1', 'Ari Lace Bootie - Cognac', '38.99'),
(17, 3, 'kelly-combat-boot', 'Kelly Combat Boot', '34.99'),
(18, 3, 'jamie-bootie', 'Jamie Bootie', '37.99'),
(19, 3, 'jazzy-bootie-nude', 'Jazzy Bootie - Nude', '39.99'),
(20, 1, 'angelica-heel-red', 'Angelica Heel - Red Snake', '32.99'),
(21, 1, 'kiara-heel-red', 'Kiara Heel - Red', '37.99'),
(22, 1, 'ester-heel-black', 'Ester Heel - Black', '33.99'),
(23, 1, 'grace-heel-nude', 'Grace Heel - Nude', '37.99'),
(24, 1, 'amanda-heel-ice', 'Amanda Heel - Ice', '39.99'),
(25, 1, 'jonie-heel-brown', 'Jonie Heel - Brown Snake', '39.99'),
(26, 1, 'lali-heel-sage', 'Lali Heel - Sage', '35.99'),
(27, 1, 'sophia-heel-blue', 'Sophia Heel - Baby Blue', '38.99'),
(28, 2, 'lauren-sandal-black', 'Lauren Sandal - Black', '19.99'),
(29, 2, 'jenny-slide-pink', 'Jenny Slide - Pink Crocodile', '19.99'),
(30, 2, 'cece-sandal-pink', 'Cece Sandal - Hot Pink', '19.99'),
(31, 2, 'barbie-slipper-black', 'Barbie Slipper - Black', '34.99'),
(32, 2, 'tanya-slide-grey', 'Tanya Slide - Grey', '21.00'),
(33, 3, 'lydia-bootie-grey', 'Lydia Bootie - Grey', '38.99'),
(34, 3, 'melly-boot-black', 'Melly Boot - Black', '48.99'),
(35, 3, 'chelsea-bootie-black', 'Chelsea Bootie - Black', '37.00');

-- create the users and grant priveleges to those users
GRANT SELECT, INSERT, DELETE, UPDATE
ON my_shoe_shop.*
TO mgs_user@localhost
IDENTIFIED BY 'pa55word';

GRANT SELECT
ON products
TO mgs_tester@localhost
IDENTIFIED BY 'pa55word';
