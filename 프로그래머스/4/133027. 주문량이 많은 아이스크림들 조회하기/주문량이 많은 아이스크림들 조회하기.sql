with flavor_rank as (
    select flavor, sum(total_order), rank() over (order by sum(total_order) desc) as rnk
    from (select * from first_half
          union
          select * from july) as total
    group by flavor
)

select flavor
from flavor_rank
where rnk <= 3
order by rnk;