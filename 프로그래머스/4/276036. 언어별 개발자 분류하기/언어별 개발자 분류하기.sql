with front as (
    select sum(code)
    from skillcodes
    where category = 'Front End'
)

select case when skill_code & (select code
                               from skillcodes
                               where name = 'Python')
            and skill_code & (select * from front) then 'A'
            when skill_code & (select code
                               from skillcodes
                               where name = 'C#') then 'B'
            when skill_code & (select * from front) then 'C'
       end as grade, id, email
from developers
having grade is not null
order by grade, id;
