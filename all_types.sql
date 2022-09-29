select
  cast(1 as TINYINT) as tinyint,
  cast(1 as SMALLINT) as smallint,
  cast(1 as INT) as int,
  cast(1 as BIGINT) as bigint,
  cast(1 as DECIMAL) as decimal,
  cast(1 as FLOAT) as float,
  cast(1 as DOUBLE) as double,
  cast("something" as binary) as binary,
  true as boolean,
  date('2021-03-21') as date,
  CAST('11 23:4:0' AS INTERVAL DAY TO SECOND) as interval,
  null as nulltype,
  "some_string" as string,
  TIMESTAMP'2020-12-31' as timestamp,
  ARRAY(1, 2, 3) as array,
  map('red', 1, 'green', 2) as map,
  struct('Spark', 5) as struct
;
