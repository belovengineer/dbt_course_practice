{{
    config(
        materialized = 'table',
    )
}}

select
    ticket_no,
	flight_id,
	fare_conditions,
	amount
from 
    {{ ref('stage_flights__ticket_flights') }}