USE codeup_test_db;

SELECT  'Pink Floyd' AS 'Albums by' ;
SELECT * FROM albums WHERE artist = 'Pink Floyd';
SELECT 'Rumors' AS 'Year of release for' ;
SELECT release_date FROM albums WHERE record_name = 'Rumors';
SELECT 'Nevermind' AS 'Genre for';
SELECT genre FROM albums WHERE record_name = 'Nevermind';
SELECT '1990s' AS 'Released during' ;
SELECT * FROM albums WHERE release_date BETWEEN 1990 AND 2000;
SELECT '20 million' AS 'Sales greater than';
SELECT record_name FROM albums WHERE sales > 20;
SELECT 'Rock' AS 'Genre' ;
SELECT record_name FROM albums WHERE genre LIKE '%Rock%';