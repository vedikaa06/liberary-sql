-- Create Database
CREATE DATABASE LibraryDB;
USE LibraryDB;

-- Tables
CREATE TABLE Members (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    join_date DATE
);

CREATE TABLE Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100),
    author VARCHAR(50),
    available BOOLEAN
);

CREATE TABLE BorrowedBooks (
    borrow_id INT PRIMARY KEY AUTO_INCREMENT,
    member_id INT,
    book_id INT,
    borrow_date DATE,
    return_date DATE,
    FOREIGN KEY (member_id) REFERENCES Members(member_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

-- Sample Data
INSERT INTO Members (name, join_date) VALUES
('Suresh Kumar', '2025-01-10'),
('Priya Singh', '2025-02-15');

INSERT INTO Books (title, author, available) VALUES
('The Alchemist', 'Paulo Coelho', TRUE),
('Harry Potter', 'J.K. Rowling', TRUE),
('Wings of Fire', 'A.P.J Abdul Kalam', TRUE);

INSERT INTO BorrowedBooks (member_id, book_id, borrow_date, return_date) VALUES
(1, 1, '2025-03-01', NULL),
(2, 2, '2025-03-05', '2025-03-20');

-- Example Queries
-- 1. Show all borrowed books with member names
SELECT m.name, b.title, bb.borrow_date, bb.return_date
FROM BorrowedBooks bb
JOIN Members m ON bb.member_id = m.member_id
JOIN Books b ON bb.book_id = b.book_id;

-- 2. Show available books
SELECT title FROM Books WHERE available = TRUE;
