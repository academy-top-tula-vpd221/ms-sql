
--CREATE TABLE authors
--(
--	id INT IDENTITY(1,1) NOT NULL,
--	last_name VARCHAR(50) NOT NULL,
--	first_name VARCHAR(50) NULL,
--	birth_date DATE NULL,
--	CONSTRAINT PK_authors_id PRIMARY KEY (id),
--	CONSTRAINT CK_authors_birh_date CHECK (birth_date < '2100-01-01')
--)

--DROP TABLE table_name

--ALTER TABLE authors
--	DROP COLUMN temp
	--ALTER COLUMN last_name VARCHAR(100) NOT NULL

--ALTER TABLE authors
--	ADD CONSTRAINT authors_id_primary PRIMARY KEY (id)

--ALTER TABLE authors
--	ADD CONSTRAINT CK_birth_date CHECK(birth_date < '2100-01-01');

/*
CREATE TABLE genre
(
	id INT IDENTITY(1, 1) NOT NULL,
	title VARCHAR(100) NOT NULL,
	descript VARCHAR(1000) NULL,
	CONSTRAINT PK_genre_id PRIMARY KEY (id)
)
GO

CREATE TABLE books
(
	id INT IDENTITY(1, 1) NOT NULL,
	title VARCHAR(200) NOT NULL,
	authors_id INT NULL,
	genre_id INT NOT NULL,
	publish_date DATE NULL,
	pages INT NULL,
	price DECIMAL(7,2),
	CONSTRAINT PK_books_id PRIMARY KEY (id),
	CONSTRAINT CK_pages CHECK (pages > 0),
	CONSTRAINT CK_price CHECK (price > 0),
	CONSTRAINT FK_authors FOREIGN KEY (authors_id) REFERENCES authors(id)
)
*/

--CREATE TABLE Products
--(
--	id INT IDENTITY(1, 1) NOT NULL,
--	counts INT,
--	price DECIMAL(9,2),
--	amount AS counts * price PERSISTED
--)

ALTER TABLE books
	DROP CONSTRAINT FK_authors
GO

ALTER TABLE books
	ADD CONSTRAINT FK_authors FOREIGN KEY (authors_id) REFERENCES authors(id)
		ON DELETE SET NULL --SET DEFAULT --SET NULL--CASCADE --NO ACTION
GO