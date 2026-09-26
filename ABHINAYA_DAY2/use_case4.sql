CREATE TABLE books (
    book_id INT NOT NULL AUTO_INCREMENT,
    isbn CHAR(13) NOT NULL,
    title VARCHAR(200) NOT NULL,
    author_name VARCHAR(120) NOT NULL,
    genre VARCHAR(60) NOT NULL,
    publisher VARCHAR(120),
    publication_year SMALLINT NOT NULL,
    page_count SMALLINT NOT NULL,
    book_format VARCHAR(20) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    copies_available INT NOT NULL,
    LANGUAGE VARCHAR(40) NOT NULL DEFAULT 'English',
    added_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT `pk_books_book_id` PRIMARY KEY (book_id),
    CONSTRAINT `uq_isbn` UNIQUE (isbn),
    CONSTRAINT `chk_publication_year_between_1000_2100` CHECK (publication_year BETWEEN 1000 AND 2100),
    CONSTRAINT `chk_page_count_greater_than_0` CHECK (page_count > 0),
    CONSTRAINT `chk_price_non_negative` CHECK (price >= 0),
    CONSTRAINT `chk_copies_available_non_negative` CHECK (copies_available >= 0)
);

INSERT INTO books (isbn, title, author_name, genre, publisher, publication_year, page_count, book_format, price, copies_available) VALUES ('9780135166307', 'Java Basics', 'James Smith', 'Programming', 'Tech Books', 2022, 450, 'Paperback', 599.00, 10);

INSERT INTO books (isbn, title, author_name, genre, publisher, publication_year, page_count, book_format, price, copies_available) VALUES ('9780143456789', 'The Lost World', 'Arun Kumar', 'Fiction', 'Penguin', 2021, 320, 'Paperback', 399.00, 8);

SELECT * FROM books;