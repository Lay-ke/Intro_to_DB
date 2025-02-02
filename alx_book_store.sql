# Create Database
CREATE DATABASE IF NOT EXISTS alx_book_store;

USE alx_book_store;

# Books
CREATE TABLE Books (
    book_id PRIMARY KEY,
    title VARCHAR(130),
    FOREIGN KEY (author_id) REFERENCES Authors(author_id),
    price DOUBLE,
    published_date DATE
)

# Authors
CREATE TABLE Authors (
    author_id PRIMARY KEY,
    author_name VARCHAR(215),
)

# Customers
CREATE TABLE Customers (
    customer_id PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
)

# Orders
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    order_date DATE
)

# Order_Details
CREATE TABLE Order_Details (
    order_detail_id PRIMARY KEY,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    quantity DOUBLE
)