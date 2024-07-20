/*
The SQL HAVING Clause
The HAVING clause was added to SQL because the WHERE keyword cannot be used with aggregate functions.

HAVING Syntax
*/

SELECT column_name(s)
FROM table_name
WHERE condition=condition
GROUP BY column_name(s)
HAVING condition=condition
ORDER BY column_name(s);

/*
Demo Database
Below is a selection from the "Customers" table in the Northwind sample database:

CustomerID	CustomerName	ContactName	Address	City	PostalCode	Country
1   Alfreds Futterkiste	Maria Anders	Obere Str. 57	Berlin	12209	Germany
2	Ana Trujillo Emparedados y helados	Ana Trujillo	Avda. de la Constitución 2222	México D.F.	05021	Mexico
3	Antonio Moreno Taquería	Antonio Moreno	Mataderos 2312	México D.F.	05023	Mexico
4   Around the Horn	Thomas Hardy	120 Hanover Sq.	London	WA1 1DP	UK
5	Berglunds snabbköp	Christina Berglund	Berguvsvägen 8	Luleå	S-958 22	Sweden


SQL HAVING Examples
The following SQL statement lists the number of customers in each country. Only include countries with more than 5 customers:
*/


/*
Example
*/
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5;

/*
Number of Records: 5
Expr1000	Country
9 	        Brazil 
11 	        France 
11 	        Germany 
7 	        UK 
13 	        USA 

*/

/*
The following SQL statement lists the number of customers in each country, sorted high to low (Only include countries with more than 5 customers):

Example
*/
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5
ORDER BY COUNT(CustomerID) DESC;


/*
Number of Records: 5
Expr1000	Country
13 	USA 
11 	Germany 
11 	France 
9 	Brazil 
7 	UK 
*/

/*
Demo Database
Below is a selection from the "Orders" table in the Northwind sample database:

OrderID	CustomerID	EmployeeID	OrderDate	ShipperID
10248	90	5	1996-07-04	3
10249	81	6	1996-07-05	1
10250	34	4	1996-07-08	2
And a selection from the "Employees" table:

EmployeeID	LastName	FirstName	BirthDate	Photo	Notes
1	Davolio	Nancy	1968-12-08	EmpID1.pic	Education includes a BA....
2	Fuller	Andrew	1952-02-19	EmpID2.pic	Andrew received his BTS....
3	Leverling	Janet	1963-08-30	EmpID3.pic	Janet has a BS degree....


More HAVING Examples
The following SQL statement lists the employees that have registered more than 10 orders:

Example
*/
SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM (Orders
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID)
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 10;


/*
The following SQL statement lists if the employees "Davolio" or "Fuller" have registered more than 25 orders:

Example
*/
SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM Orders
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
WHERE LastName = 'Davolio' OR LastName = 'Fuller'
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 25;