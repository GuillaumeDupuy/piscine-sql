SELECT "Title" AS AlbumName, NAME  AS TrackName, "Milliseconds"
FROM albums
LEFT JOIN tracks ON albums."AlbumId" = tracks."AlbumId"
ORDER BY "Milliseconds"
LIMIT 50