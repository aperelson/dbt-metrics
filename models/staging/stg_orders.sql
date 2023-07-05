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
        id as order_id,
        user_id as customer_id,
        order_date,
        status
    from source
)

select  
    order_id,
    customer_id,
    order_date,
    status
from renamed