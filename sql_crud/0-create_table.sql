CREATE TABLE IF NOT EXISTS books(
	id INTEGER PRIMARY KEY,
	title TEXT NOT NULL,
	author TEXT NOT NULL,
	genre TEXT,
	price FLOAT,
	stock INTEGER,
	published_year INTEGER
);