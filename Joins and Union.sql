
SELECT *
FROM Persons AS p
INNER JOIN Country AS c ON p.Country_Id = c.Id;

##LEFT JOIN
SELECT *
FROM Persons AS p
LEFT JOIN Country AS c ON p.Country_Id = c.Id;

## RIGHT JOIN
SELECT *
FROM Persons AS p
RIGHT JOIN Country AS c ON p.Country_Id = c.Id;

##To get distinct country names from both tables, you can use a UNION:
SELECT DISTINCT Country_name FROM Country
UNION
SELECT DISTINCT Country_name FROM Persons;

##To list all country names from both tables (including duplicates), you can simply use a UNION ALL:
SELECT Country_name FROM Country
UNION ALL
SELECT Country_name FROM Persons;

##To round the ratings of all persons in the Persons table:
SELECT Id, Fname, Lname, Population, ROUND(Rating) AS Rounded_Rating, Country_Id, Country_name
FROM Persons;