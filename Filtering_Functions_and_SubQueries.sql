/*The WHERE declarations allows the user to grab a specific registry that matches a
specific criteria*/

/*SELECT column_list from tablename WHERE condition;*/

SELECT column_list from BOBTABLE WHERE ID = 9;

/*The BETWEEN statement selects values within a range*/

SELECT column_list from BOBTABLE WHERE ID BETWEEN 3 AND 7;

/*Logic operators can combine booleans and stuff*/

SELECT ID, firstName, lastName, city FROM Costumers WHERE ID > 20 AND ID < 40;
SELECT ID, firstName, lastName, city FROM Costumers WHERE firstName = "Adam" OR lastName = "Bons";

/*the IN operator is used when you want to compare a column with more than one value*/

SELECT * from Costumers WHERE City IN ("New York", "Chicago", "Los Angeles");
/*Here, I'm selecting all the items in the list that fit the query*/

/*The NOT IN operator is used to select the registries that don't fit the query*/

SELECT * from Costumers WHERE City NOT IN("Chicago", "New York");

/*The CONCAT function concatenates two columns into one column*/
/*The AS keyword gives this new column a name*/

SELECT CONCAT (FirstName, ",", City) FROM Costumers AS NameNCity;

/*The UPPER function transforms a column name into All Caps*/
/*The LOWER function does the opposite*/

SELECT FirstName, UPPER(LastName) AS LastName, ID from Costumers WHERE ID = 5;

/*The AVG, SQRT and SUM functions do their respective math operations*/

SELECT AVG(Salary), SQRT(Age), SUM(Expenses) FROM Costumers;

/*A subquery occurs when you want to execute a query inside another*/

SELECT AVG(Salary) FROM Costumers;

SELECT FirstName, LastName, Salary from Costumers WHERE Salary > 500 ORDER BY Salary DESC;
/*Here, the list is organized in a descendant order by the salary*/
/*But it can be simplified*/

SELECT FirstName, LastName, Salary from Costumers 
WHERE Salary > (SELECT AVG(Salary) FROM Costumers) ORDER BY Salary DESC;

/*The LIKE operator allows the user to establish a search condition inside a query*/

SELECT columnNAME FROM tableName WHERE columnNAME LIKE "A%";
/*Grabs all the values that have an "A" in them*/



