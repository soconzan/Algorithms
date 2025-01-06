select i.animal_id, i.animal_type, i.name
from animal_ins i
join animal_outs o on i.animal_id = o.animal_id
where i.sex_upon_intake like 'Intact%'
and o.sex_upon_outcome not like 'Intact%'
order by 1;