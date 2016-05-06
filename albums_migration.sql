USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT NOT NULL, 
    artist VARCHAR(100) NOT NULL,
    record_name VARCHAR(100) NOT NULL,
    release_date YEAR(4) NOT NULL,
    sales INT UNSIGNED NOT NULL,
    genre VARCHAR(20) NOT NULL,
    PRIMARY KEY (id)

);