
-- create ecommerce schema

DROP SCHEMA IF EXISTS `ecommerce`;

CREATE SCHEMA `ecommerce`;
USE `ecommerce` ;

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

-- create table for category
DROP TABLE IF EXISTS ecommerce.category;
CREATE TABLE ecommerce.category (
	id BIGINT(20) NOT NULL AUTO_INCREMENT,
    category_name VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
)
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

-- create product table
DROP TABLE IF EXISTS ecommerce.product;
CREATE TABLE ecommerce.product (
  id BIGINT(20) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(4000) DEFAULT NULL,
  price DECIMAL(13,2) DEFAULT NULL,
  quantity INT(11) DEFAULT NULL,
  image_url VARCHAR(255) DEFAULT NULL,
  date_created DATETIME(6) DEFAULT NULL,
  date_updated DATETIME(6) DEFAULT NULL,
  category_id BIGINT(20) NOT NULL,
  PRIMARY KEY(`id`),
  
  FOREIGN KEY (category_id) 
	REFERENCES category(id)
)
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

-- Adding Categories
INSERT INTO ecommerce.category(category_name) VALUES('equipment');
INSERT INTO ecommerce.category(category_name) VALUES('gear');

-- Adding Product
INSERT INTO ecommerce.product(`name`, `description`, price, quantity, image_url, date_created, date_updated, category_id) 
VALUES (
	'Wrench', 
	'Wrench, or spanner, Tool, usually operated by hand, for tightening bolts and nuts. A wrench basically consists of a lever with a notch at one or both ends for gripping the bolt or nut so that it can be twisted by a pull at right angles to the axes of the lever and the bolt or nut.',
	11.21,
    100,
    'https://www.google.ca',
    NOW(),
    NOW(),
    1
);

INSERT INTO ecommerce.product(`name`, `description`, price, quantity, image_url, date_created, date_updated, category_id) 
VALUES (
	'Screwdriver', 
	'A tool used for turning screws, usually having a handle of wood, plastic, etc, and a steel shank with a flattened square-cut tip that fits into a slot in the head of the screw..',
	2.99,
    100,
    'https://www.google.ca',
    NOW(),
    NOW(),
    1
);

INSERT INTO ecommerce.product(`name`, `description`, price, quantity, image_url, date_created, date_updated, category_id) 
VALUES (
	'Hard Hat', 
	'A hard hat is an article of personal protective clothing (PPE) used to protect the head from falling objects, impacts from falls, and other types of head trauma. So-called hard hats that do not provide adequate protection from falling objects or high impact blows to the head are known as "bump caps."',
	50.99,
    100,
    'https://www.google.ca',
    NOW(),
    NOW(),
    2
);

INSERT INTO ecommerce.product(`name`, `description`, price, quantity, image_url, date_created, date_updated, category_id) 
VALUES (
	'Nitrile Work Gloves', 
	'The nitrile palm coating resists punctures, cuts, snags, and abrasion, all while keeping your hands dry. The lightweight, breathable fabric keep your hands comfortable and dry. These gloves are ideal for farming, gardening, landscaping, cleaning, automotive use, and more!',
	20.99,
    100,
    'https://www.google.ca',
    NOW(),
    NOW(),
    2
);

