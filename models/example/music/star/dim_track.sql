{{ config(materialized='table', schema='STAR', tags=['star']) }}

select
    trackid::number          as track_id,
    name::varchar            as name

from {{ source('Music_Data', 'TRACK') }}