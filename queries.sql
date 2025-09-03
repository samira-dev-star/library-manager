-- mein gläufigen queries

-- searching based on book name
SELECT * FROM books WHERE title LIKE '%SQL%';

-- adding new user
INSERT INTO users (name, email) VALUES ('Ali', 'ali@example.com');

-- register a book loaning
INSERT INTO loans (user_id, book_id, loan_date) VALUES (1, 2, '2025-08-28');

-- viewing the loaned books by a user
SELECT books.title, loans.loan_date
FROM loans
JOIN books ON loans.book_id = books.id
WHERE loans.user_id = 1;
