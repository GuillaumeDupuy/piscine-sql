SELECT customers."FirstName" || ' ' || UPPER(customers."LastName") AS FullName, SUM(invoices."Total") AS AllInvoices
FROM customers
INNER JOIN invoices ON invoices."CustomerId" = customers."CustomerId"
GROUP BY FullName
HAVING AllInvoices > 38
ORDER BY FullName