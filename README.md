# 📚 Library Management System - SQL Project

This project demonstrates a simple **Library Management System** using **MySQL**. It includes database creation, tables, sample data, and example queries to manage library operations like members, books, and borrowed records.

___

## 🗄️ Database: `LibraryDB`

### Tables

1. **Members**  
   - `member_id` (INT, Primary Key, Auto Increment)  
   - `name` (VARCHAR(50))  
   - `join_date` (DATE)  

2. **Books**  
   - `book_id` (INT, Primary Key, Auto Increment)  
   - `title` (VARCHAR(100))  
   - `author` (VARCHAR(50))  
   - `available` (BOOLEAN)  

3. **BorrowedBooks**  
   - `borrow_id` (INT, Primary Key, Auto Increment)  
   - `member_id` (INT, Foreign Key referencing Members)  
   - `book_id` (INT, Foreign Key referencing Books)  
   - `borrow_date` (DATE)  
   - `return_date` (DATE)

### Sample Data

**Members**
| member_id | name         | join_date  |
|-----------|--------------|------------|
| 1         | Suresh Kumar | 2025-01-10 |
| 2         | Priya Singh  | 2025-02-15 |

**Books**
| book_id | title           | author           | available |
|---------|-----------------|----------------|-----------|
| 1       | The Alchemist   | Paulo Coelho    | TRUE      |
| 2       | Harry Potter    | J.K. Rowling    | TRUE      |
| 3       | Wings of Fire   | A.P.J Abdul Kalam | TRUE    |

**BorrowedBooks**
| borrow_id | member_id | book_id | borrow_date | return_date |
|-----------|-----------|---------|-------------|-------------|
| 1         | 1         | 1       | 2025-03-01  | NULL        |
| 2         | 2         | 2       | 2025-03-05  | 2025-03-20  |

### Example Queries

1. **Show all borrowed books with member names**
```sql
SELECT m.name, b.title, bb.borrow_date, bb.return_date
FROM BorrowedBooks bb
JOIN Members m ON bb.member_id = m.member_id
JOIN Books b ON bb.book_id = b.book_id;
```
2. Show available books
```sql
SELECT title FROM Books WHERE available = TRUE;
```

---
## 🚀 Future Improvements
- 🧑‍💼 Add Staff and Waiter tables to manage library staff details
- 💳 Introduce Payment System Integration for fines and fees
- 🧾 Generate Automated Bills and Invoices for borrowed books
- 📅 Add Reservation Management System for book reservations

---

## 🏆 Author
- Developed by Vedika Agarwal
- 📧 Contact: vedikaa006@gmail.com
