select case when skill_code & (select code
                               from skillcodes
                               where name = 'Python')
            and skill_code & (select sum(code)
                             from skillcodes
                             where category = 'Front End') then 'A'
            when skill_code & (select code
                               from skillcodes
                               where name = 'C#') then 'B'
            else 'C'
       end as grade, id, email
from developers
where skill_code & (select sum(code)
                   from skillcodes
                   where category = 'Front End')
or skill_code & (select code
                from skillcodes
                where name = 'C#')
order by grade, id;