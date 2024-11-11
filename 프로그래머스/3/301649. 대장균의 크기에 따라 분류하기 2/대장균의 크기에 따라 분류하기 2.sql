select id, case ntile(4) over (order by SIZE_OF_COLONY)
when 1 then 'LOW'
when 2 then 'MEDIUM'
when 3 then 'HIGH'
when 4 then 'CRITICAL'
end as COLONY_NAME
from ECOLI_DATA
order by id;
