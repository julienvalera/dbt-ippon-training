{% set payment_methods = dbt_utils.get_column_values(table=ref('base_orders'), column='payment_method') %}


select
    name,
    {% for payment_method in payment_methods %}
    coalesce(sum(case when payment_method = '{{payment_method}}' then amount end), 0) as {{payment_method}}_amount
    {% if not loop.last %},{% endif %}
    {% endfor %}
from {{ ref("base_orders") }} as orders
join
    {{ ref("base_restaurants") }} as restaurants
    on orders.restaurant_identifier = restaurants.identifier
group by name