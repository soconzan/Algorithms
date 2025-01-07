with discounts as (
    select duration_type + 0 as duration_type, 1 - (discount_rate/100) as discount_rate
    from CAR_RENTAL_COMPANY_DISCOUNT_PLAN
    where car_type = '트럭'
),
histories as (
    select h.history_id, c.daily_fee,
        datediff(end_date, start_date)+1 as duration,
        case
            when datediff(end_date, start_date)+1 >= 90 then 90
            when datediff(end_date, start_date)+1 >= 30 then 30
            when datediff(end_date, start_date)+1 >= 7 then 7
            else null
        end as duration_type
    from CAR_RENTAL_COMPANY_RENTAL_HISTORY h
    join CAR_RENTAL_COMPANY_CAR c on h.car_id = c.car_id and car_type = '트럭'
)

select history_id, floor(duration * daily_fee * ifnull(discount_rate, 1)) as fee
from histories h
left join discounts d on h.duration_type = d.duration_type
order by 2 desc, 1 desc;
