{{ config(schema='STAR', tags=['star_queries']) }}

select
    da.title,
    sum(t.milliseconds) as total_duration
from {{ ref('fact_track') }} t
join {{ ref('dim_album') }} da
    on da.album_id = t.album_id
group by da.title
order by total_duration desc
limit 10