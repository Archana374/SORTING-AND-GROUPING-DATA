##create table
cREATE TABLE Country (
    Id INT PRIMARY KEY,
    Country_name VARCHAR(100),
    Population INT,
    Area INT
);

CREATE TABLE Persons (
    Id INT PRIMARY KEY,
    Fname VARCHAR(100),
    Lname VARCHAR(100),
    Population INT,
    Rating DECIMAL(3,2),
    Country_Id INT,
    Country_name VARCHAR(100),
    FOREIGN KEY (Country_Id) REFERENCES Country(Id)
);
##insert data
INSERT INTO Country (Id, Country_name, Population, Area) VALUES
(1, 'USA', 331002651, 9833517),
(2, 'India', 1380004385, 3287263),
(3, 'China', 1439323776, 9596961),
(4, 'Brazil', 212559417, 8515767),
(5, 'Nigeria', 206139589, 923768),
(6, 'Russia', 145912025, 17098242),
(7, 'Mexico', 128932753, 1964375),
(8, 'Japan', 126476461, 377975),
(9, 'Germany', 83783942, 357022),
(10, 'UK', 67886011, 243610);

INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
(1, 'John', 'Doe', 100000, 4.5, 1, 'USA'),
(2, 'Jane', 'Smith', 50000, 3.8, 2, 'India'),
(3, 'Mike', 'Johnson', 20000, 4.0, 3, 'China'),
(4, 'Emily', 'Davis', 15000, 4.7, 1, 'USA'),
(5, 'Chris', 'Brown', 30000, 4.2, 2, 'India'),
(6, 'Pat', NULL, 25000, 3.5, 3, 'China'),
(7, 'Alex', 'Taylor', 70000, 4.1, 4, 'Brazil'),
(8, 'Jordan', NULL, 12000, 2.9, 5, 'Nigeria'),
(9, 'Taylor', 'Wilson', 80000, 4.8, 1, 'USA'),
(10, 'Sam', 'Anderson', 55000, 3.9, 6, 'Russia');

##First three characters of Country_name from Country table:

SELECT SUBSTRING(Country_name, 1, 3) AS FirstThreeChars FROM Country;
##Concatenate first name and last name from Persons table:

SELECT CONCAT(Fname, ' ', Lname) AS FullName FROM Persons;
##Count unique country names from Persons table:

SELECT COUNT(DISTINCT Country_name) AS UniqueCountries FROM Persons;

##maximum population:

SELECT MAX(Population) AS MaxPopulation FROM Country;

##Minimum population from Persons table:
SELECT MIN(Population) AS MinPopulation FROM Persons;

## Insert two new rows to Persons with Lname NULL, then count Lname:

INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
(11, 'Alice', NULL, 6000, 4.5, 2, 'India'),
(12, 'Bob', NULL, 4000, 3.7, 3, 'China');

SELECT COUNT(Lname) AS CountOfLname FROM Persons WHERE Lname IS NOT NULL;

##Count rows in Persons table:
SELECT COUNT(*) AS TotalRows FROM Persons;

##Population of the first 3 rows in Country table:
SELECT Population FROM Country LIMIT 3;

##Print 3 random rows of countries:
SELECT * FROM Country ORDER BY RAND() LIMIT 3;

##List all persons ordered by rating in descending order:
SELECT * FROM Persons ORDER BY Rating DESC;

##Total population for each country in Persons table:
SELECT Country_name, SUM(Population) AS TotalPopulation 
FROM Persons 
GROUP BY Country_name;

##Countries in Persons table with a total population greater than 50,000:
SELECT Country_name, SUM(Population) AS TotalPopulation 
FROM Persons 
GROUP BY Country_name 
HAVING TotalPopulation > 50000;

##Total number of persons and average rating for each country with more than 2 persons, ordered by average rating:
SELECT Country_name, COUNT(*) AS TotalPersons, AVG(Rating) AS AverageRating 
FROM Persons 
GROUP BY Country_name 
HAVING COUNT(*) > 2 
ORDER BY AverageRating ASC;


