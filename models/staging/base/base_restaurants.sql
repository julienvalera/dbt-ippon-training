{{ config(
    materialized="table"
)}}
select 
    *
from {{ mockable_source("snowflake", "restaurants", "sample_restaurants") }}