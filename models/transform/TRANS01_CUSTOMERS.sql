with customers as (
    select 
        CUSTOMER_ID,
        FIRST_NAME,
        LAST_NAME 
    from 
        {{ ref('stg_customers') }}
)

select 
    * 
from 
    customers