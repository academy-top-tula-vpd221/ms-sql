CREATE TABLE ProductTableAudit
(
	id INT IDENTITY PRIMARY KEY,
	date_change DATETIME NOT NULL,
	user_login VARCHAR(100) NOT NULL,
	sql_command VARCHAR(100) NOT NULL,
	product_id_old INT NULL,
	product_id_new INT NULL,
	product_title_old VARCHAR(100) NULL,
	product_title_new VARCHAR(100) NULL,
	product_brand_id_old INT NULL,
	product_brand_id_new INT NULL,
	product_price_old DECIMAL(8,2) NULL,
	product_price_new DECIMAL(8,2) NULL
)