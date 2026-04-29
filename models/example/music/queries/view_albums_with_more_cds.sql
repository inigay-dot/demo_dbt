{{ config(schema='STAR', tags=['star_queries']) }}

select
    title,
    cd_year
from {{ ref('dim_album') }}
where cd_year > 1