with recursive hours as (
    select 0 as hour
    union all
    select hour+1
    from hours
    where hour < 23
)

select h.hour, ifnull(a.count, 0) as count
from hours h
left join (select hour(datetime) as hour, count(*) as count
     from animal_outs
     group by hour(datetime)) a on h.hour = a.hour
order by 1;