with orders as (
    select * from {{ref('stg_online_orders')}}
),
payments as (
    select * from {{ref('int_payment_type_amount_per_order')}}
)
select 
    orders.ORDER_ID
,   orders.CUSTOMER_ID
,   orders.ORDER_DATE
,   payments.CASH_AMOUNT
,   payments.CREDIT_AMOUNT
,   payments.TOTAL_AMOUNT
,   case 
        when orders.STATUS = 'completed' then 1 
        else 0 
    end as IS_ORDER_COMPLETED
from orders
left join payments on(orders.ORDER_ID=payments.ORDER_ID)