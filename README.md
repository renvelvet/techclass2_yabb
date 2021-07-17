I use this repo to post my class activities and homework from Module 2 as my learning journey with Generasi GIGIH. To directly jump into my work, click the item below:
* [Class activity - Session 1](./class_activity1)
* [Homework - Session 3](./homework)

# Homework's Solution
ERD:

![alt text](https://github.com/renvelvet/techclass2_yabb/blob/master/homework/images/ERD.png)

Display data query:
```sql
SELECT orders.id, orders.order_date, customers.name AS "Customer name", customers.phone AS "Customer phone", orders.total_price, group_concat(items.name separator ', ') AS "Items bought"
FROM orders
LEFT JOIN customers ON orders.customer_id = customers.id
LEFT JOIN order_details ON orders.id = order_details.order_id
LEFT JOIN items ON items.id = order_details.item_id
GROUP BY orders.id;
```
