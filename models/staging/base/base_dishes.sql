{{ config(
    materialized="table"
)}}

select 
    distinct *
from
    {{ source("snowflake", "dishes") }}