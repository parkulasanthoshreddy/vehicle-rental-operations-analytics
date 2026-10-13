-- average rentals per vehicle

select

    round(

        count(*) /

        count(distinct vehicle_id),

        2

    ) as avg_rentals_per_vehicle

from rentals;