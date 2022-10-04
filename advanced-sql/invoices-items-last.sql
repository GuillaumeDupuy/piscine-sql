SELECT name
FROM tracks
INNER JOIN invoice_items ON invoice_items."TrackId"=tracks."TrackId"
WHERE "InvoiceId" = (
    SELECT "InvoiceId"
    FROM invoices
    ORDER BY "InvoiceDate" DESC
    LIMIT 1
  ) 
