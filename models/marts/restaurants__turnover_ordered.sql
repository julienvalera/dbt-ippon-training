select 
    row_number() over (order by profit desc) as ranking,
    *
from
    {{ ref("stg_restaurants__turnover") }}
limit {{ var("nb_restaurants_to_show") }}