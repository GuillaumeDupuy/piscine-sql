SELECT employees."FirstName" || ' ' || UPPER(employees."LastName") AS FullName, COUNT(customers."SupportRepId") AS NumberOfCustomers
FROM employees
INNER JOIN customers ON employees."EmployeeId" = customers."SupportRepId"
WHERE "Title" = 'Sales Support Agent'
GROUP BY FullName
ORDER BY NumberOfCustomers