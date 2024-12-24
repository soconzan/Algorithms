# author_id, author_name, category, sales (2022-01)

with jan_sales as (
    select book_id, sum(sales) as sales
    from book_sales
    where sales_date between '2022-01-01' and '2022-01-31'
    group by book_id
)

select b.author_id, a.author_name, b.category, sum(b.price * s.sales) as sales
from book b
join jan_sales s on b.book_id = s.book_id
join author a on b.author_id = a.author_id
group by b.author_id, b.category
order by 1, 3 desc;