{{ config(
    materialized="table"
)}}

select 
    distinct *
from
    {{ source("snowflake", "fuzzy_orders") }}