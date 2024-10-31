SELECT * FROM Customers;
-- Определите, сколько уникальных стран представлено среди клиентов.
SELECT COUNT(DISTINCT Country) AS unique_countries From Customers;
-- 21

--Определите количество клиентов, которые проживают в Бразилии
SELECT count(*) as brazil_citizens from Customers
   where country == 'Brazil'
 -- 9
   
-- Посчитайте среднюю цену и общее количество товаров в категории с идентификатором 5.
 
SELECT 
  avg(Price) AS avg_price,
  count(*) AS all_products
 FROM Products 
 WHERE CategoryID =5;
-- Средняя цена = 20,25; продуктов с идентификатором 5 - 7 позиций

--Вычислите средний возраст сотрудников на дату 2024-01-01.
SELECT avg(age) AS avg_age
FROM (
      SELECT Datediff (YEAR, BirthDate, '2024-01-01') AS age
      FROM Employees
)AS Agetable;

--Найдите заказы, сделанные в период с 16 января по 15 февраля 2024 года, и
--отсортируйте их по дате заказа.--
SELECT *
FROM Orders 
WHERE OrderDate BETWEEN '2024-01-16' AND '2024-02-15'
ORDER BY OrderDate;

--Определите количество заказов, сделанных в ноябре 2023 года, используя
--начальную и конечную дату месяца

SELECT COUNT(*) AS november_orders
FROM Orders
WHERE OrderDate >= '2023-11-01' AND OrderDate <= '2023-11-30';
-- 25

--Найдите количество заказов за январь 2024 года, используя оператор LIKE для
--фильтрации даты.

SELECT COUNT(*) AS january_orders
FROM Orders
WHERE OrderDate LIKE '2024-01%';
-- 33

-- Определите количество заказов за 2024 года, используя функцию STRFTIME для
--извлечения года.

SELECT COUNT(*) AS orders_2024
FROM Orders
WHERE YEAR(OrderDate) = 2024;




    
  