{{ config(materialized='table', schema='STAR'), tags=['star'] }}

select
    t.trackid::number        as track_id,
    t.mediatypeid::number    as media_type_id,
    t.genreid::number        as genre_id,
    t.albumid::number        as album_id,
    a.artistid::number       as artist_id,
    t.milliseconds::number   as milliseconds,
    t.bytes::number          as bytes,
    t.unitprice::number      as unitprice

from {{ source('Music_Data', 'TRACK') }} t
join {{ source('Music_Data', 'ALBUM') }} a
    on t.albumid = a.albumid