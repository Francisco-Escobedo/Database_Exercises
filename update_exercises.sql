USE codeup_test_db;

SELECT 'Albums' AS 'All';
SELECT record_name FROM albums;
UPDATE albums
SET sales = (sales * 10);
SELECT * FROM albums;
SELECT '1980' AS 'Albums released before';
SELECT record_name FROM albums WHERE release_date<1980;
UPDATE albums
SET release_date = 1970
WHERE release_date<1980;
SELECT * FROM albums WHERE release_date = 1805;
SELECT 'Michael Jackson' AS 'Albums by';
SELECT record_name FROM albums WHERE artist= 'Michael Jackson';
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT * FROM albums where artist = 'Peter Jackson'