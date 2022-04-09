
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
AUTO_INCREMENT = 1;

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
AUTO_INCREMENT = 1;
