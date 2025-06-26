mysql> select * from library;
+--------+--------------------------+-----------------+---------------+------+--------+
| BookID | Title                    | Author          | Genre         | Year | Copies |
+--------+--------------------------+-----------------+---------------+------+--------+
|      1 | The Alchemist            | Paulo Coelho    | Fiction       | 1988 |      5 |
|      2 | To Kill a Mockingbird    | Harper Lee      | Classic       | 1960 |      3 |
|      3 | The Theory of Everything | Stephen Hawking | Science       | 2002 |      4 |
|      4 | Wings of Fire            | Naveen          | Autobiography | 1999 |      2 |
|      5 | The Hobbit               | J.R.R. Tolkien  | Fantasy       | 1937 |      6 |
+--------+--------------------------+-----------------+---------------+------+--------+
5 rows in set (0.00 sec)

mysql> SELECT Title, Author FROM library;
+--------------------------+-----------------+
| Title                    | Author          |
+--------------------------+-----------------+
| The Alchemist            | Paulo Coelho    |
| To Kill a Mockingbird    | Harper Lee      |
| The Theory of Everything | Stephen Hawking |
| Wings of Fire            | Naveen          |
| The Hobbit               | J.R.R. Tolkien  |
+--------------------------+-----------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM library
    -> WHERE Year > 1950;
+--------+--------------------------+-----------------+---------------+------+--------+
| BookID | Title                    | Author          | Genre         | Year | Copies |
+--------+--------------------------+-----------------+---------------+------+--------+
|      1 | The Alchemist            | Paulo Coelho    | Fiction       | 1988 |      5 |
|      2 | To Kill a Mockingbird    | Harper Lee      | Classic       | 1960 |      3 |
|      3 | The Theory of Everything | Stephen Hawking | Science       | 2002 |      4 |
|      4 | Wings of Fire            | Naveen          | Autobiography | 1999 |      2 |
+--------+--------------------------+-----------------+---------------+------+--------+
4 rows in set (0.00 sec)

mysql> SELECT * FROM library
    -> WHERE Genre = 'Fiction' OR Genre = 'Fantasy';
+--------+---------------+----------------+---------+------+--------+
| BookID | Title         | Author         | Genre   | Year | Copies |
+--------+---------------+----------------+---------+------+--------+
|      1 | The Alchemist | Paulo Coelho   | Fiction | 1988 |      5 |
|      5 | The Hobbit    | J.R.R. Tolkien | Fantasy | 1937 |      6 |
+--------+---------------+----------------+---------+------+--------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM library
    -> WHERE Copies > 3 AND Year > 1980;
+--------+--------------------------+-----------------+---------+------+--------+
| BookID | Title                    | Author          | Genre   | Year | Copies |
+--------+--------------------------+-----------------+---------+------+--------+
|      1 | The Alchemist            | Paulo Coelho    | Fiction | 1988 |      5 |
|      3 | The Theory of Everything | Stephen Hawking | Science | 2002 |      4 |
+--------+--------------------------+-----------------+---------+------+--------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM library
    -> WHERE Title LIKE 'The%';
+--------+--------------------------+-----------------+---------+------+--------+
| BookID | Title                    | Author          | Genre   | Year | Copies |
+--------+--------------------------+-----------------+---------+------+--------+
|      1 | The Alchemist            | Paulo Coelho    | Fiction | 1988 |      5 |
|      3 | The Theory of Everything | Stephen Hawking | Science | 2002 |      4 |
|      5 | The Hobbit               | J.R.R. Tolkien  | Fantasy | 1937 |      6 |
+--------+--------------------------+-----------------+---------+------+--------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM library
    -> WHERE Year BETWEEN 1950 AND 2000;
+--------+-----------------------+--------------+---------------+------+--------+
| BookID | Title                 | Author       | Genre         | Year | Copies |
+--------+-----------------------+--------------+---------------+------+--------+
|      1 | The Alchemist         | Paulo Coelho | Fiction       | 1988 |      5 |
|      2 | To Kill a Mockingbird | Harper Lee   | Classic       | 1960 |      3 |
|      4 | Wings of Fire         | Naveen       | Autobiography | 1999 |      2 |
+--------+-----------------------+--------------+---------------+------+--------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM library
    -> ORDER BY Copies DESC;
+--------+--------------------------+-----------------+---------------+------+--------+
| BookID | Title                    | Author          | Genre         | Year | Copies |
+--------+--------------------------+-----------------+---------------+------+--------+
|      5 | The Hobbit               | J.R.R. Tolkien  | Fantasy       | 1937 |      6 |
|      1 | The Alchemist            | Paulo Coelho    | Fiction       | 1988 |      5 |
|      3 | The Theory of Everything | Stephen Hawking | Science       | 2002 |      4 |
|      2 | To Kill a Mockingbird    | Harper Lee      | Classic       | 1960 |      3 |
|      4 | Wings of Fire            | Naveen          | Autobiography | 1999 |      2 |
+--------+--------------------------+-----------------+---------------+------+--------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM library
    -> ORDER BY Copies DESC
    -> LIMIT 3;
+--------+--------------------------+-----------------+---------+------+--------+
| BookID | Title                    | Author          | Genre   | Year | Copies |
+--------+--------------------------+-----------------+---------+------+--------+
|      5 | The Hobbit               | J.R.R. Tolkien  | Fantasy | 1937 |      6 |
|      1 | The Alchemist            | Paulo Coelho    | Fiction | 1988 |      5 |
|      3 | The Theory of Everything | Stephen Hawking | Science | 2002 |      4 |
+--------+--------------------------+-----------------+---------+------+--------+
3 rows in set (0.00 sec)
