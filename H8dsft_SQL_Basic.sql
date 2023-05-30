SELECT
  bt.trip_id,
  bt.start_date,
  bt.subscriber_type,
  bt.start_station_name,
  bt.start_station_id,
  bs.station_id,
  bs.name,
  bs.landmark
FROM
  `bigquery-public-data.san_francisco.bikeshare_trips` AS bt
JOIN
  `bigquery-public-data.san_francisco.bikeshare_stations` AS bs
ON
  bt.start_station_id = bs.station_id
WHERE
  bt.start_date >= '2016-01-01'
  AND bt.start_date <= '2016-03-31'
  AND bt.subscriber_type = 'Subscriber'
  AND bs.landmark = 'Redwood City';

SELECT COUNT(bt.trip_id) AS trip_count
FROM `bigquery-public-data.san_francisco.bikeshare_trips` AS bt
JOIN `bigquery-public-data.san_francisco.bikeshare_stations` AS bs
ON bt.start_station_id = bs.station_id
WHERE bt.start_date >= '2016-01-01'
  AND bt.start_date <= '2016-03-31'
  AND bt.subscriber_type = 'Subscriber'
  AND bs.landmark = 'Redwood City';

SELECT COUNT(bt.trip_id) AS trip_count
FROM `bigquery-public-data.san_francisco.bikeshare_trips` AS bt
JOIN `bigquery-public-data.san_francisco.bikeshare_stations` AS bs
ON bt.start_station_id = bs.station_id
WHERE bt.start_date >= '2016-04-01'
  AND bt.start_date <= '2016-06-30'
  AND bt.subscriber_type = 'Subscriber'
  AND bs.landmark = 'Redwood City';