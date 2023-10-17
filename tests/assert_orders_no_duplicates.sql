SELECT restaurant_identifier, payment_method, amount, created_at
FROM {{ ref('base_orders' )}}
GROUP BY restaurant_identifier, payment_method, amount, created_at
HAVING COUNT(*) > 1