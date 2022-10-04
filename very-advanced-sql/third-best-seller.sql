SELECT "LastName" || ' ' || "FirstName" AS '3rd best seller' FROM employees
WHERE "EmployeeId" = (
	SELECT c."SupportRepId" FROM customers c
	INNER JOIN invoices i ON c."CustomerId" = i."CustomerId"
	GROUP BY c."SupportRepId"
	ORDER BY SUM(i."Total") DESC
	LIMIT 3 OFFSET 2
	)