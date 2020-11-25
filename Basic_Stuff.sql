
/* The show databases command allows the user to see the list of databases
administered by the server*/

SHOW DATABASES;

/*The show tables command allows the user to see the tables in the
database*/

SHOW TABLES;

/*The show columns command allows the user to see the columns of a
given table*/

SHOW COLUMNS from BOBTABLE;

/*The select command allows the user to select data from a database*/

SELECT column_list from BOBTABLE;

/*You can also select various columns from a table*/

SELECT column_list, column_list_2, column_list_3 from BOBTABLE;

/*To collect all the information in a table, you put an **/

SELECT * from BOBTABLE;

/*To avoid selecting repeated values in a table, you use the 
keyword DISTINCT*/

SELECT DISTINCT column_name1, column_name2 from BOBTABLE;

/*The LIMIT keyword allows the user to grab a specific sub of values*/
/*For example, this'll only grab the first five values*/

SELECT ID, FirstName, LastName from customers LIMIT 5;

/*Or you can offset the table to start from another value*/

SELECT ID, FirstName, LastName from customers LIMIT 3, 5;

/*You can specify the table from which you want to grab the values*/

SELECT costumers.ID from costumers;

/*And you can organize them*/

SELECT * FROM costumers ORDER BY FirstName;