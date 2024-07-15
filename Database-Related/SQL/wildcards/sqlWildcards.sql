USE election_data;

SELECT * FROM incidents
WHERE State like 'mad%';

SELECT * FROM incidents
WHERE Lokshabha_Seat_Name Like '%pur';

SELECT Lokshabha_Seat_Name FROM incidents
WHERE Lokshabha_Seat_Name Like '%pur';

SELECT * FROM incidents
WHERE Lokshabha_Seat_Name LIKE '%opa%';

SELECT Lokshabha_Seat_Name FROM incidents
WHERE State LIKE '_elhi';

SELECT Lokshabha_Seat_Name FROM incidents
WHERE Lokshabha_Seat_Name LIKE 'J_____ur';

SELECT Lokshabha_Seat_Name FROM incidents
WHERE State LIKE '[ASUP]%';

SELECT * FROM incidents
WHERE Lokshabha_Seat_Name LIKE '[f-n]%';

SELECT Lokshabha_Seat_Name FROM incidents
WHERE Lokshabha_Seat_Name LIKE 'Jab_____%';

SELECT State FROM incidents
WHERE Lokshabha_Seat_Name LIKE '_a%';

SELECT Lokshabha_Seat_Name From incidents
WHERE Lokshabha_Seat_Name LIKE 'Jabalpur';


-- Exercise:
-- Select all records where the first letter of the City is an "a" or a "c" or an "s".


SELECT * FROM Customers
WHERE City LIKE '[acs]%';

-- Exercise:
-- Select all records where the first letter of the City starts with anything from an "a" to an "f".


SELECT * FROM Customers
WHERE City LIKE '[a-f]%';

