{{
    config(
        materialized = 'table',
    )
}}
select 
    ticket_no,
    book_ref,
    passenger_id,
    passenger_name,
    contact_data
from 
    {{ ref('stage_flights__tickets') }}