"
Задание: №3

Выведите из таблицы products информацию о всех товарах кроме самого дешёвого.\
Результат отсортируйте по убыванию id товара.

Поля в результирующей таблице: product_id, name, price
"

SELECT product_id,
       name,
       price
FROM   products
WHERE  price != (SELECT min(price)
                 FROM   products)
ORDER BY product_id desc