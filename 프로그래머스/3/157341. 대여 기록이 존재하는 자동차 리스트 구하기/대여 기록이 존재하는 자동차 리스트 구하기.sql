select h.car_id
from CAR_RENTAL_COMPANY_RENTAL_HISTORY h
left join CAR_RENTAL_COMPANY_CAR c on h.car_id = c.car_id
where start_date between '2022-10-01' and '2022-10-31'
and c.car_type = '세단'
group by h.car_id
order by h.car_id desc;