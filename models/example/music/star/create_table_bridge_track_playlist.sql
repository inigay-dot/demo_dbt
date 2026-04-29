{{ config(materialized='table', schema='STAR', tags=['star']) }}

select
    playlistid::number       as playlist_id,
    trackid::number          as track_id

from {{ source('Music_Data', 'PLAYLIST_TRACK') }}