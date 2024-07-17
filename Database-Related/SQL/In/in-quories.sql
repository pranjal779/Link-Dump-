USE election_data;

SELECT State FROM incidents
WHERE Lokshabha_Seat_Name IN ('Jabalpur', 'Bhopal', 'Aonla');

-- SELECT column_name(s)
-- FROM table_name
-- WHERE column_name IN (value1, value2, ...);

-- NOT IN
SELECT DISTINCT State FROM incidents
WHERE Lokshabha_Seat_Name NOT IN ('Guntur', 'Manipur','Jabalpur', 'Bhopal', 'Aonla');


-- IN (SELECT)
SELECT * FROM Customers
WHERE CustomerID in (SELECT CustomerID FROM Orders);

-- NOT IN (SELECT)
SELECT * FROM Customers
WHERE CustomerID NOT IN (SELECT CustomerID FROM Orders);


-- Exercise:
-- Use the IN operator to select all the records where Country is either "Norway" or "France".

SELECT * FROM Customers
WHERE COUNTRY IN ('Norway','France');

-- Exercise:
-- Use the IN operator to select all the records where Country is NOT "Norway" and NOT "France".


SELECT * FROM Customers
WHERE COUNTRY NOT IN ('Norway', 'France');

