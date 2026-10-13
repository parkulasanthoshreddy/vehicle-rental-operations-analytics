-- customer pickups while charging

select

    count(*) as charging_pickups

from rentals

where charged = true

and servicerental = false;