SELECT NAME
FROM artists
INNER JOIN albums ON artists."ArtistId" = albums."ArtistId"
GROUP BY NAME
HAVING COUNT(name) >= 4
ORDER BY NAME DESC 