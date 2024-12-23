with may_order as (
    select product_id, sum(amount) as amount
    from food_order
    where produce_date between '2022-05-01' and '2022-05-31'
    group by product_id
)

select p.product_id, p.product_name, p.price * o.amount as total_sales
from food_product p
join may_order o on p.product_id = o.product_id
order by 3 desc, 1;