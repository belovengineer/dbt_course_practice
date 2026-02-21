{{
    config(
        materialized = 'table',
    )
}}

select 
    book_ref,
    book_date,
    total_amount
from 
    {{ ref('stage_flights__bookings') }}