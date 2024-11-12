select c.id
from ECOLI_DATA c
left join ECOLI_DATA p on c.parent_id = p.id
left join ECOLI_DATA gp on p.parent_id = gp.id
where p.parent_id is not null
and gp.parent_id is null
order by c.id;