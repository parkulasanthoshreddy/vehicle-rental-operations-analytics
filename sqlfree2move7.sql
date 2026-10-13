-- charging vs non charging rentals

select

    charged,

    count(*) as rentals,

    round(

        count(*) * 100.0 /

        (select count(*) from rentals),

        2

    ) as percentage

from rentals

group by charged;
