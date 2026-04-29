{{ config(materialized='table', schema='STAR', tags=['star']) }}

select
    genreid::number          as genre_id,
    name::varchar            as name

from {{ source('Music_Data', 'GENRE') }}