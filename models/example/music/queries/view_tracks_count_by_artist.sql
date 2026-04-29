{{ config(schema='STAR', tags=['star_queries']) }}

select
    da.artist_id,
    da2.name as artist_name,
    count(*) as nb_tracks
from {{ ref('create_table_fact_track') }} t
join {{ ref('create_table_dim_artist') }} da2
    on da2.artist_id = t.artist_id
join {{ ref('create_table_dim_album') }} da
    on da.album_id = t.album_id
group by da.artist_id, da2.name
order by nb_tracks desc