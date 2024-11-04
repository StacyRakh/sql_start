-- Задание 1
SELECT
p.CategoryID,
SUM(od.Quantity) AS total_quantity,
SUM(od.Quantity * p.Price) AS total_revenue
FROM
OrderDetails od
JOIN
Products p ON od.ProductID = p.ProductID
GROUP BY
p.CategoryID
ORDER BY
total_revenue DESC;

-- Задание 2 
SELECT
p.CategoryID,
COUNT(DISTINCT od.OrderID) AS order_count
FROM
OrderDetails od
JOIN
Products p ON od.ProductID = p.ProductID
GROUP BY
p.CategoryID
ORDER BY
order_count DESC;

-- Задание 3 
SELECT
p.ProductName,
SUM(od.Quantity) AS total_quantity
FROM
OrderDetails od
JOIN
Products p ON od.ProductID = p.ProductID
GROUP BY
p.ProductName
ORDER BY
total_quantity DESC;


    
  