
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
  is_active INT(1) NOT NULL,
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
INSERT INTO ecommerce.product(`name`, `description`, price, quantity, image_url, date_created, date_updated, category_id, is_active) 
VALUES (
	'Wrench', 
	'Wrench, or spanner, Tool, usually operated by hand, for tightening bolts and nuts. A wrench basically consists of a lever with a notch at one or both ends for gripping the bolt or nut so that it can be twisted by a pull at right angles to the axes of the lever and the bolt or nut.',
	11.21,
    100,
    'https://www.google.ca',
    NOW(),
    NOW(),
    1,
    1
);

INSERT INTO ecommerce.product(`name`, `description`, price, quantity, image_url, date_created, date_updated, category_id, is_active) 
VALUES (
	'Screwdriver', 
	'A tool used for turning screws, usually having a handle of wood, plastic, etc, and a steel shank with a flattened square-cut tip that fits into a slot in the head of the screw..',
	2.99,
    100,
    'https://www.google.ca',
    NOW(),
    NOW(),
    1,
    1
);

INSERT INTO ecommerce.product(`name`, `description`, price, quantity, image_url, date_created, date_updated, category_id, is_active) 
VALUES (
	'Ratchet', 
	'(Entry 1 of 2) 1 : a mechanism that consists of a bar or wheel having inclined teeth into which a pawl drops so that motion can be imparted to the wheel or bar, governed, or prevented and that is used in a hand tool (such as a wrench or screwdriver) to allow effective motion in one direction only.',
	53.21,
    100,
    'https://www.google.ca',
    NOW(),
    NOW(),
    1,
    1
);

INSERT INTO ecommerce.product(`name`, `description`, price, quantity, image_url, date_created, date_updated, category_id, is_active) 
VALUES (
	'Plier', 
    'Pliers are a hand tool used to hold objects firmly, possibly developed from tongs used to handle hot metal in Bronze Age Europe. They are also useful for bending and compressing a wide range of materials.',
	21.00,
    100,
    'https://www.google.ca',
    NOW(),
    NOW(),
    1,
    1
);

INSERT INTO ecommerce.product(`name`, `description`, price, quantity, image_url, date_created, date_updated, category_id, is_active) 
VALUES (
	'Vynil Safety Tape', 
	'3M General Purpose Vinyl Tape 764 is a vinyl tape coated with a rubber adhesive and ideally suited for a variety of coding, temporary surface protection, bundling, marking and protection applications. The rubber adhesive offers quick stick and good holding strength on many substrates.',
	2.40,
    100,
    'https://www.google.ca',
    NOW(),
    NOW(),
    1,
    1
);

INSERT INTO ecommerce.product(`name`, `description`, price, quantity, image_url, date_created, date_updated, category_id, is_active) 
VALUES (
	'Measurement Tape', 
    'A tape measure, or measuring tape is a type of hand tool typically used to measure distance or size. It is like a much longer flexible ruler consisting of a case, thumb lock, blade/tape, hook, and sometimes a belt clip.',
	15.90,
    100,
    'https://www.google.ca',
    NOW(),
    NOW(),
    1,
    1
);

INSERT INTO ecommerce.product(`name`, `description`, price, quantity, image_url, date_created, date_updated, category_id, is_active) 
VALUES (
	'Pry Bar',
    'Pry bars, also known as crowbars or pinch bars, are hand tools used to pull two objects apart. Their angled, flattened end acts as a lever, allowing you to apply a significant amount of force between objects.',
	90.00,
    100,
    'https://www.google.ca',
    NOW(),
    NOW(),
    1,
    1
);

INSERT INTO ecommerce.product(`name`, `description`, price, quantity, image_url, date_created, date_updated, category_id, is_active) 
VALUES (
	'Saw',
    'A saw is a tool consisting of a tough blade, wire, or chain with a hard toothed edge. It is used to cut through material, very often wood, though sometimes metal or stone. The cut is made by placing the toothed edge against the material and moving it forcefully forth and less vigorously back or continuously forward.',
	120.00,
    100,
    'https://www.google.ca',
    NOW(),
    NOW(),
    1,
    1
);

-- type equipment

-- type gear
INSERT INTO ecommerce.product(`name`, `description`, price, quantity, image_url, date_created, date_updated, category_id, is_active) 
VALUES (
	'Hard Hat', 
	'A hard hat is an article of personal protective clothing (PPE) used to protect the head from falling objects, impacts from falls, and other types of head trauma. So-called hard hats that do not provide adequate protection from falling objects or high impact blows to the head are known as "bump caps."',
	50.99,
    100,
    'https://www.google.ca',
    NOW(),
    NOW(),
    2,
    1
);

INSERT INTO ecommerce.product(`name`, `description`, price, quantity, image_url, date_created, date_updated, category_id, is_active) 
VALUES (
	'Nitrile Work Gloves', 
	'The nitrile palm coating resists punctures, cuts, snags, and abrasion, all while keeping your hands dry. The lightweight, breathable fabric keep your hands comfortable and dry. These gloves are ideal for farming, gardening, landscaping, cleaning, automotive use, and more!',
	20.99,
    100,
    'https://www.google.ca',
    NOW(),
    NOW(),
    2,
    1
);

INSERT INTO ecommerce.product(`name`, `description`, price, quantity, image_url, date_created, date_updated, category_id, is_active) 
VALUES (
	'Safety Boots',
    'Safety boots are shoes made with a protective reinforcement at the front making them quite durable. The reinforcement helps to protect the toes from falling objects or any kind of compression. They are normally installed with a sole plate in the main sole to prevent against punctures that may come from below.',
	120.00,
    100,
    'https://www.google.ca',
    NOW(),
    NOW(),
    2,
    1
);

INSERT INTO ecommerce.product(`name`, `description`, price, quantity, image_url, date_created, date_updated, category_id, is_active) 
VALUES (
	'Reflective Parka',
    'Reflective long coats and parkas provide the ultimate in winter warmth without sacrificing your safety.',
	230.00,
    100,
    'https://www.google.ca',
    NOW(),
    NOW(),
    2,
    1
);

INSERT INTO ecommerce.product(`name`, `description`, price, quantity, image_url, date_created, date_updated, category_id, is_active) 
VALUES (
	'Disposable Coveralls',
    'Disposable coveralls are an item of personal protective equipment (PPE) designed to cover the whole body and other clothing to protect against dirt or other outside contaminants. Coveralls are one piece and loose fitting for ease of movement, with sleeves, full leggings and often a hood to cover the head.',
	21.90,
    100,
    'https://www.google.ca',
    NOW(),
    NOW(),
    2,
    1
);

INSERT INTO ecommerce.product(`name`, `description`, price, quantity, image_url, date_created, date_updated, category_id, is_active) 
VALUES (
	'Earmuffs',
    'Earmuffs are a type of personal protective equipment (PPE) that is used to protect the wearer ears from excessive noise pollution, dust or temperature variations, especially cold. They are made of thermoplastics and sponge and are shaped like a pair of cups.',
	40.00,
    100,
    'https://www.google.ca',
    NOW(),
    NOW(),
    2,
    1
);

-- type cleaning


INSERT INTO ecommerce.product(`name`, `description`, price, quantity, image_url, date_created, date_updated, category_id, is_active) 
VALUES (
	'Broom',
    'A broom is a cleaning tool consisting of usually stiff fibers attached to, and roughly parallel to, a cylindrical handle, the broomstick.',
	22.00,
    100,
    'https://www.google.ca',
    NOW(),
    NOW(),
    3,
    1
);

INSERT INTO ecommerce.product(`name`, `description`, price, quantity, image_url, date_created, date_updated, category_id, is_active) 
VALUES (
	'Sponge Mop',
    'A wet mop with a sponge as the absorbent. mop, swob, swab - cleaning implement consisting of absorbent material fastened to a handle; for cleaning floors.',
	62.00,
    100,
    'https://www.google.ca',
    NOW(),
    NOW(),
    3,
    1
);

INSERT INTO ecommerce.product(`name`, `description`, price, quantity, image_url, date_created, date_updated, category_id, is_active) 
VALUES (
	'Mop Bucket',
    'A mop bucket cart (or mop trolley) is a wheeled bucket that allows its user to wring out a wet mop without getting the hands dirty. The cart has two buckets with the upper one usually clipped onto the lower. The upper bucket is used to place the wet mop for storage and press handle to wring out the mop.',
	35.00,
    100,
    'https://www.google.ca',
    NOW(),
    NOW(),
    3,
    1
);

INSERT INTO ecommerce.product(`name`, `description`, price, quantity, image_url, date_created, date_updated, category_id, is_active) 
VALUES (
	'Toilet Paper',
    'A thin sanitary absorbent paper usually in a roll for use in drying or cleaning oneself after defecation and urination.',
	12.00,
    100,
    'https://www.google.ca',
    NOW(),
    NOW(),
    3,
    1
);

INSERT INTO ecommerce.product(`name`, `description`, price, quantity, image_url, date_created, date_updated, category_id, is_active) 
VALUES (
	'Caution Slippery Sign',
    'Slippery When Wet Signs and Wet Floor Signs will warn people of slip hazard areas and prevent ... Bilingual Caution Slippery When Wet Sign.',
	30.00,
    100,
    'https://www.google.ca',
    NOW(),
    NOW(),
    3,
    1
);

INSERT INTO ecommerce.product(`name`, `description`, price, quantity, image_url, date_created, date_updated, category_id, is_active) 
VALUES (
	'Scrub Brush',
    'a brush with hard bristles, used especially for cleaning floors.',
	26.00,
    100,
    'https://www.google.ca',
    NOW(),
    NOW(),
    3,
    1
);

INSERT INTO ecommerce.product(`name`, `description`, price, quantity, image_url, date_created, date_updated, category_id, is_active) 
VALUES (
	'Glass Cleaner',
    'Glass cleaners loosen and dissolve dirt and greasy marks found on glass, and dry quickly without streaking. They are available in liquid, spray, foam and wipe forms.',
	12.00,
    100,
    'https://www.google.ca',
    NOW(),
    NOW(),
    3,
    1
);





