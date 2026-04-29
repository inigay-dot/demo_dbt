{{ config(schema='STAR', tags=['star_queries']) }}

select
    dg.name as genre,
    count(*) as nb_tracks
from {{ ref('create_table_fact_track') }} t
join {{ ref('create_table_dim_genre') }} dg
    on dg.genre_id = t.genre_id
join {{ ref('create_table_dim_album') }} da
    on da.album_id = t.album_id
where da.prod_year between 2000 and 2009
group by dg.name
order by nb_tracks desc
limit 1