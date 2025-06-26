# 📚 MySQL Library Database Project

This project demonstrates how to use SQL to manage and query a simple **library database**. It includes a table to store book information such as titles, authors, genres, years of publication, and the number of copies available.

---

## 🏗️ Database Details

### ✅ Database: `library`

### ✅ Table: `library`

| Column   | Type         | Description                        |
|----------|--------------|------------------------------------|
| BookID   | INT (PK, AI) | Unique book ID (Auto Incremented) |
| Title    | VARCHAR(100) | Book title                         |
| Author   | VARCHAR(100) | Name of the author                 |
| Genre    | VARCHAR(50)  | Genre of the book                  |
| Year     | INT          | Year of publication                |
| Copies   | INT          | Number of copies available         |

---

## 📦 Sample Data Inserted

```sql
INSERT INTO library (Title, Author, Genre, Year, Copies) VALUES
('The Alchemist', 'Paulo Coelho', 'Fiction', 1988, 5),
('To Kill a Mockingbird', 'Harper Lee', 'Classic', 1960, 3),
('The Theory of Everything', 'Stephen Hawking', 'Science', 2002, 4),
('Wings of Fire', 'Naveen', 'Autobiography', 1999, 2),
('The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 1937, 6);
