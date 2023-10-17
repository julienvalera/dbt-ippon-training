select count(a.*) as count_pint_of_beer
from {{ ref("flattend_cleaned_names") }} a
join {{ ref("base_dishes") }} b on a.dish_name = b.name
where b.identifier = 2 and created_at like '2022-08-01%'
