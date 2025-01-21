select e.dept_id, d.dept_name_en, round(avg(e.sal)) as avg_sal
from hr_employees e
left join hr_department d on e.dept_id = d.dept_id
group by dept_id
order by 3 desc