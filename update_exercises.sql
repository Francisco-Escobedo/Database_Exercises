USE codeup_test_db;

SELECT 'Albums' AS 'All';
SELECT record_name FROM albums;
SELECT '1980' AS 'Albums released before';
SELECT record_name FROM albums WHERE release_date<1980;
SELECT 'Michael Jackson' AS 'Albums by';
SELECT record_name FROM albums WHERE artist= 'Michael Jackson';