-- charging pickup probability by hour

with all_hour_events as (

    select

        hour(started_time) as rental_hour,

        count(*) as total_events

    from rentals

    where charged = true

    group by rental_hour

),

customer_hour_pickups as (

    select

        hour(started_time) as rental_hour,

        count(*) as pickup_events

    from rentals

    where charged = true

    and servicerental = false

    group by rental_hour

)

select

    a.rental_hour,

    a.total_events,

    c.pickup_events,

    round(

        c.pickup_events * 100.0 / a.total_events,

        2

    ) as pickup_probability

from all_hour_events a

join customer_hour_pickups c

on a.rental_hour = c.rental_hour

order by rental_hour;