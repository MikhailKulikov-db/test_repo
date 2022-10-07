CREATE
OR REPLACE TABLE daily_fare_table as
SELECT
    dayofweek(tpep_pickup_datetime) as weekday,
    *
FROM
    `samples`.`nyctaxi`.`trips`
WHERE
    pickup_zip in (10001, 10018)
    AND tpep_pickup_datetime BETWEEN TIMESTAMP '2016-01-01 12:07'
    AND TIMESTAMP '2016-01-16 12:07'
    AND trip_distance < 10
;