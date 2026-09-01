select 
    ID as ORDER_ID
,   USER_ID as CUSTOMER_ID
,	ORDER_DATE
,	STATUS
,	_ETL_LOADED_AT
from {{source('online','ORDERS')}}