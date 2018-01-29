-- BASIC QUERIES
-- Unless otherwise stated, all queries should return all columns

-- Get all information about all authors
      SELECT * FROM authors;
-- Get just the name and birth year of all authors
    SELECT authors, birth_year FROM authors;
-- Get all authors born in the 20th centruy or later
    SELECT authors  FROM authors WHERE birth_year  > 1900;
-- Get all authors born in the USA
   SELECT authors  FROM authors WHERE nationality = 'United States of America';
-- Get all books published on 1985
    SELECT * FROM books WHERE publication_date = 1985;
-- Get all books published before 1989
   SELECT * FROM books WHERE publication_date < 1989;
-- Get just the title of all books.
  SELECT title FROM books;
-- Get just the year that 'A Dance with Dragons' was published
  -- Cry when you realize how long it's been
    SELECT publication_date FROM books WHERE title = 'A Dance with Dragons';

-- Get all books which have `the` somewhere in their title (hint, look up LIKE/ILIKE)
  SELECT * FROM books WHERE title LIKE '%the%';
-- Add yourself as an author
 INSERT INTO authors VALUES (9, 'Remy', 'United States of America', 1990);
-- Add two books that you'd like to write (you can hard-code your id as the author id)
  INSERT INTO books Values (69, 'Gobbles', 2018, 9);
  INSERT INTO books Values (70, 'Why I hate Angular', 2018, 9);

-- Update one of your books to have a new title
UPDATE books SET title = 'Twinkle Toes' WHERE title = 'Gobbles';
-- Delete your books
DELETE FROM books where id = 69;
DELETE FROM books where id = 70;
-- Delete your author entry
DELETE FROM authors where id = 9;
