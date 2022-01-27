with stations_by_complex as (
    select count(s.station_id) number_of_stations
    ,s.complex_id
    from {{source('bigquery', 'stations')}} as s
    group by 2
),
final as (
    select sc.complex_id
    ,sc.complex_name
    ,sbc.number_of_stations
    from {{source('bigquery', 'station_complexes')}} as sc
    inner join stations_by_complex as sbc using (complex_id)
)
select * from final