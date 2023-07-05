with payments as (
    select 
        PAYMENT_ID,
        ORDER_ID,
        PAYMENT_METHOD,
        -- `amount` is currently stored in cents, so this converts it to dollars
        (AMOUNT / 100) AS AMOUNT
    from 
        {{ ref('stg_payments') }}
)

select 
    * 
from 
    payments