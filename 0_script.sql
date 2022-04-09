
-- create ecommerce schema

DROP SCHEMA IF EXISTS `ecommerce`;

CREATE SCHEMA `ecommerce`;
USE `ecommerce` ;

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

-- create product table
CREATE TABLE IF NOT EXISTS `ecommerce.product` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(4000) DEFAULT NULL,
  `price` DECIMAL(13,2) DEFAULT NULL,
  `quantity` INT(11) DEFAULT NULL,
  `image_url` VARCHAR(255) DEFAULT NULL,
  `date_created` DATETIME(6) DEFAULT NULL,
  `date_updated` DATETIME(6) DEFAULT NULL,
  PRIMARY KEY(`id`)
)
ENGINE=InnoDB
AUTO_INCREMENT = 1;

