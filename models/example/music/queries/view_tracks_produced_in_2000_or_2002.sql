{{ config(schema='STAR', tags=['star_queries']) }}

select
    t.track_id,
    dt.name,
    a.prod_year
from {{ ref('create_table_fact_track') }} t
join {{ ref('create_table_dim_track') }} dt
    on dt.track_id = t.track_id
join {{ ref('create_table_dim_album') }} a
    on a.album_id = t.album_id
where a.prod_year in (2000, 2002)