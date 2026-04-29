{{ config(schema='STAR', tags=['star_queries']) }}

select
    da.artist_id,
    ar.name as artist_name,
    count(distinct da.album_id) as nb_albums
from {{ ref('dim_album') }} da
join {{ ref('dim_artist') }} ar
    on ar.artist_id = da.artist_id
group by da.artist_id, ar.name
order by nb_albums desc