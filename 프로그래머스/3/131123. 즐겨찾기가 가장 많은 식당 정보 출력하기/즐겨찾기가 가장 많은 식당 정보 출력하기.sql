with rank_rest as (
    select *, rank() over (partition by food_type order by favorites desc) as r
    from rest_info
)

select food_type, rest_id, rest_name, favorites
from rank_rest
where r = 1
order by 1 desc;