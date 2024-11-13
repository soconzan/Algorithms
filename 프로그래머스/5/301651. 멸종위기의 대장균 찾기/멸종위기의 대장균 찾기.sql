with recursive gen as (
    select id, parent_id, 1 as generation
    from ECOLI_DATA
    where parent_id is null
    
    union all
    
    select e.id, e.parent_id, g.generation+1
    from ECOLI_DATA e
    join gen g on e.parent_id = g.id
)

select count(*) as count , g.generation
from gen g
left join ECOLI_DATA e on g.id = e.parent_id
where e.id is null
group by g.generation;