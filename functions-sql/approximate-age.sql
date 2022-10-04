SELECT employees."FirstName", employees."LastName", strftime("HireDate") - strftime("BirthDate") AS ApproximateAge
FROM employees
ORDER BY ApproximateAge