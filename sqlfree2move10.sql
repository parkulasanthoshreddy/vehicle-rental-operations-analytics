-- pickup probability by battery bucket

with charging_events as (

    select

        floor(chargelevelstart / 10) * 10 as battery_bucket,

        count(*) as total_events

    from rentals

    where chargelevelstart is not null

    group by battery_bucket

),

customer_pickups as (

    select

        floor(chargelevelstart / 10) * 10 as battery_bucket,

        count(*) as pickup_events

    from rentals

    where charged = true

    and servicerental = false

    and chargelevelstart is not null

    group by battery_bucket

)

select

    c.battery_bucket,

    c.total_events,

    p.pickup_events,

    round(

        p.pickup_events * 100.0 / c.total_events,

        2

    ) as pickup_probability

from charging_events c

join customer_pickups p

on c.battery_bucket = p.battery_bucket

order by c.battery_bucket;