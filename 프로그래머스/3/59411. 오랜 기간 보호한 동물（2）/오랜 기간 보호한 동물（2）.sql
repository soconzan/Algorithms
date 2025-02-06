select o.animal_id, o.name
from animal_outs o
join animal_ins i on o.animal_id = i.animal_id
order by datediff(o.datetime, i.datetime) desc limit 2