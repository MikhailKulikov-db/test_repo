CREATE
OR REPLACE TABLE daily_fare_table as
select count(*) as daily_trip_count, day
from
(
    SELECT
        day(tpep_pickup_datetime) as day,
        *
    FROM
        `samples`.`nyctaxi`.`trips`
    WHERE
        tpep_pickup_datetime BETWEEN TIMESTAMP '2016-01-01 12:07'
        AND TIMESTAMP '2016-01-14 12:07'
)
group by day order by day
;
