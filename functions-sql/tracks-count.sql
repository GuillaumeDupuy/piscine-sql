SELECT genres."Name", COUNT(tracks."GenreId") AS NumberOfTracks
FROM genres
INNER JOIN tracks ON genres."GenreId" = tracks."GenreId"
GROUP BY genres."Name"
ORDER BY genres."Name"