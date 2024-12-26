with price_rank as (
    select *, rank() over (partition by category order by price desc) as price_rank
    from food_product
    where category in ('과자', '국', '김치', '식용유')
)

select category, price as max_price, product_name
from price_rank
where price_rank = 1
order by 2 desc;