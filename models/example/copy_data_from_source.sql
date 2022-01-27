
/*
    This model is a very simple example of how to copy data from source.
*/

{{ config(materialized='table') }}

with source_data as (
    select * from {{source ('bigquery', 'routes')}}
)

select *
from source_data

