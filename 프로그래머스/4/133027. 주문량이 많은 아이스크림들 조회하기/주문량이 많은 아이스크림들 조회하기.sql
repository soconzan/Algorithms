select flavor
from (select * from first_half
     union
     select * from july) as sales
group by flavor
order by sum(total_order) desc limit 3;