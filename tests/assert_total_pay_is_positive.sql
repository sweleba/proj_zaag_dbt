select 
    ORDER_ID
,   sum(TOTAL_AMOUNT)
from {{ref('int_payment_type_amount_per_order')}}
group by ORDER_ID
having sum(TOTAL_AMOUNT)<0