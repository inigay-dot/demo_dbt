{{ config(schema='STAR', tags=['star_queries']) }}

select
    dg.name as genre,
    avg(t.bytes) as avg_size_bytes
from {{ ref('create_table_fact_track') }} t
join {{ ref('create_table_dim_genre') }} dg
    on dg.genre_id = t.genre_id
group by dg.name
order by avg_size_bytes desc