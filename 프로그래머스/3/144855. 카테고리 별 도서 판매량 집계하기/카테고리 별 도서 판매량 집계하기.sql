select category, sum(sales) as total_sales
from book_sales s
left join book b on s.book_id = b.book_id
where sales_date between '2022-01-01' and '2022-01-31'
group by b.category
order by 1;