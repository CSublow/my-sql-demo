/* Count the number of rows for the track and the album tables */
select count(*) from Track;
select count(*) from Artist;

/* Display track name and file format type, limiting to 5 records. You have to get the file format type from the MediaType table, hence you join the Track and MediaType tables using the common key to each (MediaTypeId) */
SELECT Track.Name as Track, MediaType.Name as Type FROM Track 
INNER JOIN MediaType on Track.MediaTypeId = MediaType.MediaTypeId limit 5;

/* Similiar to above, except using genres and the Genre table instead of the MediaType table. Filter the results to only show jazz tracks */
SELECT Track.Name as Track, Genre.Name as Genre FROM Track
INNER JOIN Genre on Track.GenreId = Genre.GenreId 
WHERE Genre.Name = 'Jazz' limit 5;

/* Show the name of a track, the name of its media type, and its genre. Add a filter that shows only tracks with a type of 'Protected AAC audio file' where the genre is 'soundtrack' */
SELECT Track.Name as Track, MediaType.Name as Type, Genre.Name as Genre FROM Track
INNER JOIN Genre on Track.GenreId = Genre.GenreId 
INNER JOIN MediaType on Track.MediaTypeId = MediaType.MediaTypeId
WHERE Genre.Name = 'Soundtrack' AND MediaType.Name = 'Protected AAC audio file';


SELECT * from Playlist;

