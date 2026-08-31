with customers as (
    select *
    from {{ref('stg_online_customers')}}
)
select 
    CUSTOMER_ID
,   FIRST_NAME
,   LAST_NAME 
from customers