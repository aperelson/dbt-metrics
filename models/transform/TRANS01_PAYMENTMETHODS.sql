-- {% set payment_methods = ['credit_card', 'coupon', 'bank_transfer', 'gift_card'] %}
with paymentmethods as
(
    SELECT 
        DISTINCT PAYMENT_METHOD as PAYMENT_METHOD
    FROM 
        {{ ref('stg_payments') }}
)

select
    *
from 
    paymentmethods