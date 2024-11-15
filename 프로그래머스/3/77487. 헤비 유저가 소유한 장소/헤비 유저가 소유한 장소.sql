select *
from places p
where 1 < (select count(*)
           from places s
           where s.host_id = p.host_id)
order by p.id;