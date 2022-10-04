SELECT DISTINCT("InvoiceId") FROM invoice_items WHERE "TrackId" IN (
	SELECT "TrackId" FROM tracks
	WHERE "Milliseconds" IN (
		SELECT MAX(t."Milliseconds") FROM tracks t
		INNER JOIN genres g ON t."GenreId" = g."GenreId"
		GROUP BY g."GenreId"
		)
	)
ORDER BY "InvoiceId"