{{ config(materialized='table', schema='STAR'), tags=['star'] }}

select
    playlistid::number       as playlist_id,
    name::varchar            as name

from {{ source('Music_Data', 'PLAYLIST') }}