select product_name
from netology.ORDERS
         inner join netology.CUSTOMERS c on c.id = orders.customer_id
where lower(c.name) = lower(:name);