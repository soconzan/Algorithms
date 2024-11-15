select year(s.sales_date) as year,
       month(s.sales_date) as month,
       u.gender as gender, count(distinct u.user_id) as users
from online_sale s
join user_info u on s.user_id = u.user_id
where u.gender is not null
group by 1, 2, 3
order by 1, 2, 3;