with ranked_fish as (
    select *, rank() over (partition by fish_type order by length desc) as r
    from fish_info
)

select i.id, n.fish_name, i.length
from ranked_fish i
left join fish_name_info n on i.fish_type = n.fish_type
where i.r = 1
order by 1;