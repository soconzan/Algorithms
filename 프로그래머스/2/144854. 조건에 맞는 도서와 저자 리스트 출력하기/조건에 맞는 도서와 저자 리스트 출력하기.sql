select b.book_id, a.author_name, DATE_FORMAT(b.published_date, '%Y-%m-%d') AS published_date
from book b
left join author a on b.author_id = a.author_id
where b.category = '경제'
order by 3