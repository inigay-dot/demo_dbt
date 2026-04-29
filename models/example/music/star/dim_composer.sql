{{ config(materialized='table', schema='STAR', tags=['star'])}}

with composer_extracted as (
    select
        trim(f.value::string) as composer_name
    from {{ source('Music_Data', 'TRACK') }} t,
    lateral flatten(input => split(t.composer, ';')) f
    where t.composer is not null
),

composer_clean as (
    select distinct
        composer_name
    from composer_extracted
    where composer_name <> ''
)

select
    row_number() over(order by composer_name) as composer_id,
    composer_name as name
from composer_clean