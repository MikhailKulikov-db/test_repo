MERGE INTO TABLE daily_fare_table
USING (
  SELECT
    day(tpep_pickup_datetime) as day,
    count(*) as daily_trip_count
  FROM
    samples.nyctaxi.trips
  WHERE
    tpep_pickup_datetime BETWEEN TIMESTAMP '2016-01-01 12:07'
    AND TIMESTAMP '2016-01-14 12:07'
  group by day(tpep_pickup_datetime)
) as source
on daily_fare_table.day == source.day and daily_fare_table.day in (12, 13, 14)
when matched then
  update set daily_fare_table.daily_trip_count = source.daily_trip_count
;
