{% if target.name!='prod' %}
    select 
        id as customer_id
    ,   first_name
    ,   last_name
    from {{source('online_dev','CUSTOMERS')}}
{%else%}
    select 
        id as customer_id
    ,   first_name
    ,   last_name
    from {{source('online_prod','CUSTOMERS')}}
{% endif %}

