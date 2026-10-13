-- dashboard dataset

select

    vehicle_id,

    hour(started_time) as rental_hour,

    dayname(started_time) as rental_day,

    monthname(started_time) as rental_month,

    chargelevelstart,

    chargelevelend,

    charged,

    servicerental

from rentals;