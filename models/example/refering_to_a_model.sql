
/*
    Simple example of how to get data from another model
*/

select *
from {{ ref('copy_data_from_source') }}
where route_id = 'W'
