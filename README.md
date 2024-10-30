Tables
Country

Columns:
Id: Unique identifier
Country_name: Name of the country
Population: Total population
Area: Total area (in sq km)
Persons

Columns:
Id: Unique identifier
Fname: First name
Lname: Last name (nullable)
Population: Population represented by the person
Rating: Rating on a scale of 0-5
Country_Id: Foreign key referencing the Country table
Country_name: Name of the associated country
SQL Operations
Table Creation: Create Country first, then Persons.
Data Insertion: Insert sample data into both tables.
Queries: Execute various SQL queries to:
Retrieve specific fields (like country names)
Concatenate names
Count unique countries and total populations
Find maximum and minimum populations
Analyze data based on ratings and grouping.
This setup enables easy management and retrieval of information related to countries and their associated individuals.

