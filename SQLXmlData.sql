USE aero

/*
CREATE TABLE table_xml(
	id INT IDENTITY(1,1) NOT NULL,
	title VARCHAR(20) NOT NULL,
	xml_data XML NULL,
	CONSTRAINT PK_table_xml PRIMARY KEY (id)
)
GO
*/

/*
INSERT INTO table_xml (title, xml_data)
	VALUES ('books', '<books>
		<book>
			<title>Идиот</title>
			<author>Достоевский</author>
			<pages>123</pages>
		</book>
		<book>
			<title>Дубровский</title>
			<author>Пушки</author>
			<pages>222</pages>
		</book>
		<book>
			<title>Горе от ума</title>
			<author>Грибоедов</author>
			<pages>78</pages>
		</book>
		</books>');
GO
*/

/*
SELECT * FROM table_xml

SELECT xml_data.query('person/name'),
		xml_data.value('person[1]/name[1]', 'VARCHAR(20)')
	FROM table_xml
*/

/*
UPDATE table_xml 
	--SET xml_data.modify('insert <city>Moscow</city> as last into person[1]')
	--SET xml_data.modify('insert <id>1</id> as first into person[1]')
	--SET xml_data.modify('insert <last_name>Smith</last_name> after person[1]/name[1]')
	--SET xml_data.modify('delete /person/last_name')
	--SET xml_data.modify('replace value of(/person[1]/name/text())[1] with "Joe"')
*/



GO

/*
SELECT xml_data.value('books[1]/book[1]/title[1]', 'VARCHAR(20)')
	FROM table_xml
	WHERE title = 'books'
*/

/*
SELECT tmp.col.value('title', 'VARCHAR(20)') AS title,
		tmp.col.value('author', 'VARCHAR(20)') AS author,
		tmp.col.value('pages', 'INT') AS pages
FROM xml_data.nodes('books/book') tmp(col)
*/
/*
FOR XML ...

RAW
AUTO
EXPLICIT
PATH

TYPE
ELEMENTS
ROOT
*/

DECLARE @xml XML
DECLARE @xml_handle INT

SET @xml = (SELECT *
				FROM Products
				--FOR XML RAW('product'), ELEMENTS, ROOT('products')
				FOR XML PATH('product'), ROOT('products'));

--PRINT CONVERT(VARCHAR(MAX), @xml)

EXEC sp_xml_preparedocument @xml_handle OUTPUT, @xml;

SELECT *
	FROM OPENXML(@xml_handle, 'products/product', 2)
	WITH Products

EXEC sp_xml_removedocument @xml_handle