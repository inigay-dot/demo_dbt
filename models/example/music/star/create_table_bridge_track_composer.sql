{{ config(materialized='table', schema='STAR', tags=['star']) }}

select
    t.trackid::number        as track_id,
    dc.composer_id::number   as composer_id
from {{ source('Music_Data', 'TRACK') }} t,
lateral flatten(input => split(t.composer, ';')) f
join {{ ref('create_table_dim_composer') }} dc
    on trim(f.value::string) = dc.name
where t.composer is not null
and trim(f.value::string) <> ''