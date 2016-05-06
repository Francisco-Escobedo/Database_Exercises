USE codeup_test_db;

SELECT '1991' AS 'Albums released after';
SELECT record_name FROM albums WHERE release_date>1991;
SELECT 'Grunge' AS 'Albums with genre';
SELECT * FROM albums WHERE genre = 'Grunge';
SELECT 'Pink Floyd' AS 'Albums by';
SELECT * FROM albums WHERE artist = 'Pink Floyd';
