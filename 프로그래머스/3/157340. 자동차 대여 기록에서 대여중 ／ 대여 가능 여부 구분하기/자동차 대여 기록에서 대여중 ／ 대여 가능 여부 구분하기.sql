with rented as (
    select car_id
    from CAR_RENTAL_COMPANY_RENTAL_HISTORY
    where '2022-10-16' between start_date and end_date
)

select car_id,
    case
        when car_id in (select * from rented) then '대여중'
        else '대여 가능'
    end as availabilty
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
group by car_id
order by 1 desc;