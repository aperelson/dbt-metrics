with orders as (
    select 
        ORDER_ID,
        CUSTOMER_ID,
        ORDER_DATE,
        STATUS 
    from 
        {{ ref('stg_orders') }}
)

select 
    * 
from 
    orders