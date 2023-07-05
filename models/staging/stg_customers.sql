with source as (
    select 
        id,
        first_name,
        last_name
    from {{ ref('raw_customers') }}
),

renamed as (
    select
        id as CUSTOMER_ID,
        first_name AS FIRST_NAME,
        last_name AS LAST_NAME
    from source
)

select  
    CUSTOMER_ID,
    FIRST_NAME,
    LAST_NAME
from renamed