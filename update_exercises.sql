

USE codeup_test_db;

SELECT 'all albums' as 'exercise';
SELECT * FROM albums;

UPDATE albums
SET sales = (sales * 10)
WHERE sales > 0;

SELECT 'release date in the 80''s' as '80''s music';
SELECT * FROM albums WHERE release_date < 1980;

UPDATE albums
SET release_date = (release_date - 100)
WHERE release_date < 1980;

SELECT 'all michael jackson albums' as 'michael jackson';
SELECT * FROM albums WHERE artist = 'Michael Jackson';

UPDATE albums
SET artist = 'Peter Jackson'
WHERE  artist = 'Michael Jackson';



