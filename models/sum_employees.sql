select 
    sum(NB_EMPLOYEES) AS count_employees
from
    {{ source("snowflake", "restaurants") }}