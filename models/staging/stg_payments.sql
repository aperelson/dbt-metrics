with source as (
    select id,
           order_id,
           payment_method,
           amount 
    from {{ ref('raw_payments') }}
),

renamed as (

    select
        id AS PAYMENT_ID,
        order_id AS ORDER_ID,
        payment_method AS PAYMENT_METHOD,
        amount AS AMOUNT
    from source

)

select 
    PAYMENT_ID,
    ORDER_ID,
    PAYMENT_METHOD,
    AMOUNT 
from renamed