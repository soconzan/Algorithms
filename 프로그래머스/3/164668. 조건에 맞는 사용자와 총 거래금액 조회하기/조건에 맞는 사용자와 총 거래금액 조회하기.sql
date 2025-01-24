select user_id, nickname, sum(price) as total_sales
from USED_GOODS_BOARD b
left join USED_GOODS_USER u on b.writer_id = u.user_id
where status = 'done'
group by writer_id
having sum(price) >= 700000
order by 3;