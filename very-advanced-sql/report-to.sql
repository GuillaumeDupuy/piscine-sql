SELECT e1."EmployeeId", e1."FirstName" || ' ' || e1."LastName" AS EmployeeName, e2."FirstName" || ' ' || e2."LastName" AS ReportsTo
FROM employees e1
LEFT JOIN employees e2
ON e1."ReportsTo" = e2."EmployeeId";