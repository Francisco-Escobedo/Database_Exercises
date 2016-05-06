USE codeup_test_db;

SELECT '1991' AS 'Albums released after';
DELETE FROM albums WHERE release_date>1991;
SELECT 'Grunge' AS 'Albums with genre';
DELETE FROM albums WHERE genre = 'Grunge';
SELECT 'Pink Floyd' AS 'Albums by';
DELETE FROM albums WHERE artist = 'Pink Floyd';
