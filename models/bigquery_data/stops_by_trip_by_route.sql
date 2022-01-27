with trips as (
    select t.route_id
    ,r.route_long_name
    ,t.service_id
    ,t.trip_id
    from {{source ('bigquery', 'trips')}} as t
    left join {{source ('bigquery', 'routes')}} as r using (route_id)
),
stops as (
    select st.trip_id
    ,count(st.trip_id) number_of_stops
    from {{source ('bigquery', 'stop_times')}} as st
    group by 1
),
stops_by_trip as (
    select t.*
    ,s.number_of_stops
    from trips as t
        inner join stops  as s using (trip_id)
)
select *
from stops_by_trip
