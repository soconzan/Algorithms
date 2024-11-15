select year(s.sales_date) as year, month(s.sales_date) as month,
       count(distinct s.user_id) as purchased_users,
       round(count(distinct s.user_id) / (select(count(*))
                                          from user_info
                                          where year(joined) = 2021), 1) as puchased_ratio
from online_sale s join user_info u
on s.user_id = u.user_id
where year(u.joined) = 2021
group by 1, 2
order by 1, 2;