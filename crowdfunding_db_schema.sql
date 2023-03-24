--Creating table, importing .CSV and assigning primary and foriegn keys
--DROP TABLE IF EXISTS campaign;
--DROP TABLE IF EXISTS contacts;
--DROP TABLE IF EXISTS subcategory;
--DROP TABLE IF EXISTS category;

--Creating the tables and uploading the .csv file to the schema

CREATE TABLE contacts(
	PRIMARY KEY (contact_id),
	contact_id INT NOT NULL,
	first_name VARCHAR (30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	email VARCHAR (255) NOT NULL
);

CREATE TABLE campaign(
	cf_id INT NOT NULL,
	contact_id INT NOT NULL,
	company_name VARCHAR (100) NOT NULL,
	description VARCHAR (100) NOT NULL,
	goal NUMERIC,
	pledged NUMERIC,
	outcome VARCHAR (30) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR (30) NOT NULL,
	currency VARCHAR (30) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR (30) NOT NULL,
	subcategory_id VARCHAR (30) NOT NULL,
	PRIMARY KEY (cf_id),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
); 

CREATE TABLE category(
	PRIMARY KEY (category_id),
	category_id VARCHAR (30) NOT NULL,
	category VARCHAR (30) NOT NULL
);

CREATE TABLE subcategory(
	PRIMARY KEY (subcategory_id),
	subcategory_id VARCHAR (30) NOT NULL,
	subcategory VARCHAR (30) NOT NULL
);

--Select and run the tables created

SELECT *
FROM contacts;


SELECT*
FROM campaign;

SELECT*
FROM category;

SELECT*
FROM subcategory;



















