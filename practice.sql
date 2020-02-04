-- SELECT * FROM Song;

-- SELECT Title FROM Song;

-- SELECT Title FROM Song WHERE ArtistId = 6;

SELECT * FROM Song;

SELECT Title, SongLength, ReleaseDate, ArtistId
FROM Song
WHERE ArtistId = 8
AND SongLength < 200;

SELECT Title, SongLength, ReleaseDate, ArtistId
FROM Song
WHERE ArtistId = 6
OR ArtistId = 8;

-- Insert stuff in the DB
INSERT INTO Song
VALUES (null, "Baby Shark", 689, "01/12/1945", 9, 3, 5);


-- Another way to insert ( recommended )
INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
VALUES ("Baby Squid", 689, "01/12/1945", 9, 3, 5);

UPDATE Song
SET Title = "Baby Octopus"
WHERE SongId = 23;

-- Delete
DELETE FROM Song
WHERE SongId = 25;

-- Write a SELECT statement to display how many songs exist
-- for each artist. You'll need to use the count() function
-- and the GROUP BY keyword sequence.


SELECT COUNT() as '# of songs', artist.artistname
FROM Song
JOIN Artist
ON Song.ArtistId = Artist.ArtistId
GROUP BY Song.ArtistId;

SELECT al.title || " by " || ar.artistname
from Album al
JOIN Artist ar
ON al.ArtistId = ar.ArtistId;

-- Music History Exercise

-- 1.)
-- Query all of the entries in the Genre table

SELECT * FROM Genre;

-- 2.)
-- Using the INSERT statement, add one of your favorite artists to the Artist table.

SELECT * FROM Artist;

INSERT INTO Artist 
VALUES(null, "Queen", 1972);

-- 3.)
-- Using the INSERT statement, add one, or more, albums by your artist to the Album table.

SELECT * FROM Album;

INSERT INTO Album 
VALUES(null, "Queen II", "1/24/1973", 3000, "Glazers", 28, 1);

-- 4.)
-- Using the INSERT statement, add some songs that are on that album to the Song table.

SELECT * FROM Song;

INSERT INTO Song 
VALUES(null, "TEST", 300, "1/24/1973", 1, 28, 25);

-- 5.)
-- Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.

SELECT s.Title, a.Title, art.artistname
FROM Song s 
LEFT JOIN Album a
ON s.AlbumId = a.AlbumId
LEFT JOIN Artist art
ON s.ArtistId = art.ArtistId;

-- 6.)
-- Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

SELECT COUNT() as '# of songs', Album.Title
FROM Song
JOIN Album
ON Song.AlbumId = Album.AlbumId
GROUP BY Song.AlbumId;

-- 7.) Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

SELECT COUNT() as '# of songs', Artist.ArtistName
FROM Song
JOIN Artist
ON Song.ArtistId = Artist.ArtistId
GROUP BY Song.ArtistId;

-- 8.)Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

SELECT COUNT() as '# of songs', Genre.Label
FROM Song
JOIN Genre
ON Song.GenreId = Genre.GenreId
GROUP BY Song.GenreId;

-- 9.)Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.

SELECT MAX(AlbumLength) as "Longest Song", Title
from Album;
