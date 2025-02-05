select a.author_id, a.author_name, b.category, sum(s.sales * b.price) as sales
from book_sales s
join book b on s.book_id = b.book_id
join author a on b.author_id = a.author_id
where s.sales_date between '2022-01-01' and '2022-01-31'
group by a.author_id, b.category
order by a.author_id, b.category desc;