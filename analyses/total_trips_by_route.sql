with trips_by_route as (

    select t.route_id
    ,count(t.trip_id) number_of_trips
    from {{source ('bigquery', 'trips')}} as t
    group by 1
)
select *
from trips_by_route