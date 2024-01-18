SELECT * FROM books;

SELECT b.* FROM books b
JOIN books_categories bc ON b.id = bc.bookId
JOIN categories c ON bc.categoryId = c.id
WHERE c.name = 'Fantasia';

SELECT b.name AS book_name, c.name AS category_name FROM books b
JOIN books_categories bc ON b.id = bc.bookId
JOIN categories c ON bc.categoryId = c.id;

SELECT b.name AS book_name, a.name AS author_name, a.bio FROM books b
JOIN authors a ON b.authorId = a.id
WHERE b.name = 'Harry Potter';
