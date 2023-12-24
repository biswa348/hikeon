-- Create the database
CREATE DATABASE IF NOT EXISTS CustomerDatabase;
USE CustomerDatabase;

-- Create the CustomerDetails table
CREATE TABLE IF NOT EXISTS customerdetails (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    dob DATE NOT NULL,
    occupation ENUM('developer', 'chef', 'plumber', 'carpenter', 'other') NOT NULL,
    customer_group ENUM('hikeon', 'chef', 'developer', 'NA') NOT NULL
);
select* from customerdetails;

-- Ensure constraints and indexes
ALTER TABLE CustomerDetails ADD CONSTRAINT CHK_Occupation CHECK (occupation IN ('developer', 'chef', 'plumber', 'carpenter', 'other'));
ALTER TABLE CustomerDetails ADD CONSTRAINT CHK_CustomerGroup CHECK (customer_group IN ('hikeon', 'chef', 'developer', 'NA'));

-- Create an index on the email column for uniqueness
CREATE UNIQUE INDEX idx_unique_email ON CustomerDetails (email);
show tables;
desc customerdetails;
