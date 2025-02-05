"
Задание: №2

Повторите запрос из предыдущего задания, но теперь вместо подзапроса используйте оператор WITH и табличное выражение.

Условия задачи те же: используя данные из таблицы user_actions, рассчитайте среднее число заказов всех пользователей.

Полученное среднее число заказов округлите до двух знаков после запятой. Колонку с этим значением назовите orders_avg.

Поле в результирующей таблице: orders_avg
"

with subqueries as (SELECT user_id,
                           count(order_id) as orders_count
                    FROM   user_actions
                    WHERE  action = 'create_order'
                    GROUP BY user_id)
SELECT round(avg(orders_count), 2) as orders_avg
FROM   subqueries