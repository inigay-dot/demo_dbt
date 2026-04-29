{% macro create_table_album() %}

-- Table Definitions

    {% do run_query("""

    CREATE OR REPLACE TABLE RAW.album(
        AlbumId numeric primary key,
        Title varchar,
        ArtistId numeric,
        Prod_year numeric,
        Cd_year numeric
    );

    """) %}

{% endmacro %}