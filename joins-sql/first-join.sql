SELECT "Title" AS AlbumName, NAME AS ArtistName
FROM artists
INNER JOIN albums ON albums.ArtistId = artists.ArtistId
LIMIT 100