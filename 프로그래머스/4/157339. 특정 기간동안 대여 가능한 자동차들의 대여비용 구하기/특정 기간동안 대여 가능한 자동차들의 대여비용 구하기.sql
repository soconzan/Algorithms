select c.car_id, c.car_type,
    round(c.daily_fee*30*(1-d.discount_rate/100)) as fee
from CAR_RENTAL_COMPANY_CAR c
left join (select history_id, car_id,
           max(start_date) as start_date,
           max(end_date) as end_date
           from CAR_RENTAL_COMPANY_RENTAL_HISTORY
           group by car_id) h on c.car_id = h.car_id
left join (select *
     from CAR_RENTAL_COMPANY_DISCOUNT_PLAN
     where duration_type like '30%') d on c.car_type = d.car_type
where c.car_type in ('세단', 'SUV')
and c.daily_fee*30*(1-d.discount_rate/100) between 500000 and 2000000
and (h.end_date is null
or h.end_date < '2022-11-01'
or h.start_date > '2022-11-30')
order by 3 desc, 2, 1 desc;