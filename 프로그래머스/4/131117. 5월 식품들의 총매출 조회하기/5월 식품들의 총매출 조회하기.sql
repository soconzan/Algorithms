select o.product_id, product_name, sum(amount)*price as total_saled
from food_order o
join food_product p on o.product_id = p.product_id
where produce_date between '2022-05-01' and '2022-05-31'
group by product_id
order by 3 desc, 1;