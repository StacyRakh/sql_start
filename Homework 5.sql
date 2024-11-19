Create Table EmployeeDetails (EmployeeID INTEGER PRIMARY KEY,
EmployeeName TEXT,
Position TEXT,
HireDate DATE,
Salary NUMERIC);
--Добавление данных
INSERT INTO EmployeeDetails (EmployeeID,EmployeeName,Position,HireDate,Salary)
VALUES (111, 'Alex Prohorov', 'Psychiatrist', '2018-05-07', 85000);
INSERT INTO EmployeeDetails (EmployeeID,EmployeeName,Position,HireDate,Salary)
VALUES (222, 'Anna Mann', 'Psychologist', '2018-06-10', 65000);
INSERT INTO EmployeeDetails (EmployeeID,EmployeeName,Position,HireDate,Salary)
VALUES (333, 'Sasha Nixon', 'Surgeon', '2021-03-23', 115000);

-- Создание представлений. Задание 2.--
CREATE VIEW HighValueOrders AS
SELECT 
  OrderID,
  OrderDate,
  SUM(Quantity * Price) AS TotalAmount
FROM Orders 
JOIN OrderDetails Using (OrderID)
JOIN Products Using (ProductID)
GROUP BY OrderID, OrderDate
HAVING SUM(Quantity * Price) > 10000;

-- Задание 3. Удаление данных и таблиц. 
DELETE FROM EmployeeDetails WHERE Salary < 50000;
DROP TABLE EmployeeDetails;

--Задание 4 
CREATE PROCEDURE GetProductSales (IN p_ProductID INTEGER)
BEGIN
  SELECT
  o.OrderID,
  o.OrderDate,
  o.CustomerID
  FROM Orders o
  JOIN OrderDetails od Using OrderID
  WHERE od.ProductID = p_ProductID;
END;













