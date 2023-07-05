with source as (
    select 
        id,
        user_id,
        order_date,
        status 
    from {{ ref('raw_orders') }}
),

renamed as (
    select
        id as ORDER_ID,
        user_id as CUSTOMER_ID,
        order_date AS ORDER_DATE,
        status AS STATUS
    from source
)

select  
    ORDER_ID,
    CUSTOMER_ID,
    ORDER_DATE,
    STATUS
from renamed