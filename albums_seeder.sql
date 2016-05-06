USE codeup_test_db;

TRUNCATE albums;

INSERT INTO albums (artist, record_name, release_date, sales, genre)
VALUES  ('Michael Jackson', 'Thriller', 1982, 48.1, 'Pop'),
        ('Eagles', 'Their Greatest Hits', 1976, 32.2, 'Rock'),
        ('Fleetwood Mac', 'Rumors', 1977, 27.9, 'Soft Rock'),
        ('Pink Floyd', 'The Dark Side of the Moon', 1973, 22.7, 'Progressive Rock'),
        ('Nirvana', 'Nevermind', 1991, 16.7, 'Grunge');