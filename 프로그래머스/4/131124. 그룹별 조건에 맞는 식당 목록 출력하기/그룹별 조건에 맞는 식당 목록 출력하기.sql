with member_rank as (
    select
        member_id,
        rank() over (order by count(*) desc) as r
    from rest_review
    group by member_id
)

select m.member_name, r.review_text, date_format(r.review_date, '%Y-%m-%d') as review_date
from rest_review r
left join member_profile m on r.member_id = m.member_id
where r.member_id in (select member_id
                   from member_rank
                   where r = 1)
order by 3, 2