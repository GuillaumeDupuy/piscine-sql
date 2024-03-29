SELECT "FirstName", "LastName","Country",
CASE
	WHEN "Country"='Argentina' THEN 'America'
	WHEN "Country"='Australia' THEN 'Oceania'
	WHEN "Country"='Austria' THEN 'Europe'
	WHEN "Country"='Belgium' THEN 'Europe'
	WHEN "Country"='Brazil' THEN 'America'
	WHEN "Country"='Canada' THEN 'America'
	WHEN "Country"='Chile' THEN 'America'
	WHEN "Country"='Czech Republic' THEN 'Europe'
	WHEN "Country"='Denmark' THEN 'Europe'
	WHEN "Country"='Finland' THEN 'Europe'
	WHEN "Country"='France' THEN 'Europe'
	WHEN "Country"='Germany' THEN 'Europe'
	WHEN "Country"='Hungary' THEN 'Europe'
	WHEN "Country"='India' THEN 'Asia'
	WHEN "Country"='Ireland' THEN 'Europe'
	WHEN "Country"='Italy' THEN 'Europe'
	WHEN "Country"='Netherlands' THEN 'Europe'
	WHEN "Country"='Norway' THEN 'Europe'
	WHEN "Country"='Poland' THEN 'Europe'
	WHEN "Country"='Portugal' THEN 'Europe'
	WHEN "Country"='Spain' THEN 'Europe'
	WHEN "Country"='Sweden' THEN 'Europe'
	WHEN "Country"='USA' THEN 'America'
	WHEN "Country"='United Kingdom' THEN 'Europe'
END AS Continent
FROM customers