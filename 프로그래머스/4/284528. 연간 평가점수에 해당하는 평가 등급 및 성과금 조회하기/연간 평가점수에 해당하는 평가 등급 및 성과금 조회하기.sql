select e.emp_no, e.emp_name,
    case
        when g.score >= 96 then 'S'
        when g.score >= 90 then 'A'
        when g.score >= 80 then 'B'
        else 'C'
    end as grade,
    case
        when g.score >= 96 then 0.2
        when g.score >= 90 then 0.15
        when g.score >= 80 then 0.1
        else 0
    end * e.sal as bonus
from hr_employees e
join (select emp_no, avg(score) as score
      from hr_grade
      where year = 2022
      group by emp_no) g on e.emp_no = g.emp_no
order by 1;

