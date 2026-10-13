-- least utilized vehicles

select

    vehicle_id,

    count(*) as rental_count

from rentals

group by vehicle_id

order by rental_count asc

limit 10;