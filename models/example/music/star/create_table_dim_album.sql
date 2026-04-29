{{ config(materialized='table', schema='STAR', tags=['star']) }}

select
    albumid::number          as album_id,
    title::varchar           as title,
    prod_year::number        as prod_year,
    cd_year::number          as cd_year

from {{ source('Music_Data', 'ALBUM') }}