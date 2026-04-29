{{ config(schema='STAR', tags=['star_queries']) }}

select distinct
    dp.name as playlist_name
from {{ ref('bridge_track_playlist') }} btp
join {{ ref('dim_playlist') }} dp
    on dp.playlist_id = btp.playlist_id
join {{ ref('fact_track') }} t
    on t.track_id = btp.track_id
join {{ ref('dim_artist') }} da
    on da.artist_id = t.artist_id
where da.birth_year < 1990