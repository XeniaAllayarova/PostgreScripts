-- Добавление нового продукта
INSERT INTO
	PRODUCTS (
		PRODUCT_NAME,
		DESCRIPTION,
		PRICE,
		QUANTITY_IN_STOCK
	)
VALUES
	('phone', 'new model', 500, 100);

-- Обновление цены продукта
UPDATE PRODUCTS
SET
	PRICE = 1000
WHERE
	PRODUCT_ID = 2

-- Выбор всех заказов определенного пользователя
SELECT
	*
FROM
	ORDERS
WHERE
	USER_ID = 1

-- Расчет общей стоимости заказа
SELECT
	SUM(TOTAL_COST)
FROM
	ORDER_DETAILS
WHERE
	ORDER_ID = 1
	
-- Подсчет количества товаров на складе
SELECT
	SUM(QUANTITY_IN_STOCK)
FROM
	PRODUCTS
	
-- Получение 5 самых дорогих товаров
SELECT
	*
FROM
	PRODUCTS
ORDER BY
	PRICE DESC
LIMIT
	5
	
-- Список товаров с низким запасом (менее 5 штук)
SELECT
	*
FROM
	PRODUCTS
WHERE
	QUANTITY_IN_STOCK < 5