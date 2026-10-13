-- customer vs service activity

select

    servicerental,

    count(*) as rentals,

    round(

        count(*) * 100.0 /

        (select count(*) from rentals),

        2

    ) as percentage

from rentals

group by servicerental;