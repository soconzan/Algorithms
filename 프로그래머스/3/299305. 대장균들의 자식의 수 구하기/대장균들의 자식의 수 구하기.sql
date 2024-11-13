select id, (select count(*)
            from ECOLI_DATA c
            where c.parent_id = e.id) as child_count
from ECOLI_DATA e;