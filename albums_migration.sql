USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) NOT NULL,
    name VARCHAR(100) NOT NULL,
    release_date YEAR(4) NOT NULL,
    sales_in_millions DECIMAL(6,1) NOT NULL,
    genre VARCHAR(200) NOT NULL,
    PRIMARY KEY (id)
);
