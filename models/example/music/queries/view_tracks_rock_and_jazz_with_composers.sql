{{ config(schema='STAR', tags=['star_queries']) }}

select
    dt.name as track_name,
    dc.name as composer,
    dg.name as genre
from {{ ref('create_table_fact_track') }} t
join {{ ref('create_table_dim_track') }} dt
    on dt.track_id = t.track_id
join {{ ref('create_table_dim_genre') }} dg
    on dg.genre_id = t.genre_id
join {{ ref('create_table_bridge_track_composer') }} btc
    on btc.track_id = t.track_id
join {{ ref('create_table_dim_composer') }} dc
    on dc.composer_id = btc.composer_id
where dg.name in ('Rock', 'Jazz')