select
    order_id,
    sum(amount) total
from {{ ref('stg_stripe__payments') }}
group by order_id
having total < 0