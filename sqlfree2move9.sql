-- customer pickup rate during charging

select

    round(

        count(*) * 100.0 /

        (select count(*) from rentals where charged = true),

        2

    ) as pickup_rate

from rentals

where charged = true

and servicerental = false;