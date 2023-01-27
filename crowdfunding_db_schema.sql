--Drop tables if necessary
DROP TABLE IF EXISTS Campaign;
DROP TABLE IF EXISTS Contacts;
DROP TABLE IF EXISTS Subcategory;
DROP TABLE IF EXISTS Category;

--Create Tables in order with consideration for Foreign Keys

Create Table Category (
	category_id VARCHAR (4) NOT NULL PRIMARY KEY,
	category VARCHAR (25) NOT NULL
);

Create Table Subcategory (
	subcategory_id VARCHAR (6) NOT NULL PRIMARY KEY,
	subcategory VARCHAR (25) NOT NULL
);

Create Table Contacts (
	contact_id INT NOT NULL PRIMARY KEY,
	first_name VARCHAR (30),
	last_name VARCHAR (30),
	email VARCHAR (60)
);

Create Table Campaign (
	cf_id INT NOT NULL PRIMARY KEY,
	contact_id INT NOT NULL,
	company_name VARCHAR (60),
	description VARCHAR (60),
	goal REAL,
	pledged REAL,
	outcome VARCHAR (15),
	backers_count INT,
	country VARCHAR (10),
	currency VARCHAR (10),
	launched_date DATE,
	end_date DATE,
	category_id VARCHAR (4),
	subcategory_id VARCHAR (6),
	FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES Category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES Subcategory(subcategory_id)
);

--Import csv files to tables

--View each table

Select * From Category;

Select * From Subcategory;

Select * From Contacts;

Select * From Campaign;