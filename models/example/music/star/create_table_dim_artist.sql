{{ config(materialized='table', schema='STAR', tags=['star']) }}

select
    artistid::number         as artist_id,
    name::varchar            as name,
    birthyear::number        as birth_year,
    country::varchar         as country

from {{ source('Music_Data', 'ARTIST') }}