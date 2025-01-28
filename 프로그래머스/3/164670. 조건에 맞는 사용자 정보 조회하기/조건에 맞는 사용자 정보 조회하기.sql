select u.user_id, u.nickname,
       concat(city, ' ', street_address1, ' ', street_address2) as '전체주소',
       concat(substr(tlno, 1, 3), '-', substr(tlno, 4, 4), '-', substr(tlno, 8)) as 전화번호
from USED_GOODS_BOARD b
left join USED_GOODS_USER u on b.writer_id = u.user_id
group by writer_id
having count(*) >= 3
order by u.user_id desc