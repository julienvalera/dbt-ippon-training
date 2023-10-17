select
    sum(amount) as profit,
    name,
    restaurant_identifier
from {{ ref("base_orders") }} as orders
join
    {{ ref("base_restaurants") }} as restaurants
    on orders.restaurant_identifier = restaurants.identifier
group by name, restaurant_identifier
