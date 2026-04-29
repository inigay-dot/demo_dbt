{{ config(schema='STAR', tags=['star_queries']) }}

select
    dt.name as track_name,
    da.name as artist_name,
    dg.name as genre
from {{ ref('create_table_fact_track') }} t
join {{ ref('create_table_dim_track') }} dt
    on dt.track_id = t.track_id
join {{ ref('create_table_dim_artist') }} da
    on da.artist_id = t.artist_id
join {{ ref('create_table_dim_genre') }} dg
    on dg.genre_id = t.genre_id
where dg.name = 'Rock'
and da.country = 'France'