SELECT artists."Name" AS ArtistName, albums."Title" AS AlbumName, tracks."Name" AS TrackName, ROUND((tracks."Bytes")/1000000.0,2) || ' ' || 'MB' as MegaBytes
FROM tracks
INNER JOIN artists ON artists."ArtistId" = albums."ArtistId"
INNER JOIN albums ON albums."AlbumId" = tracks."AlbumId"
WHERE albums."Title"='American Idiot'