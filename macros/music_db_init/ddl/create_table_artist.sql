{% macro create_table_artist() %}

-- Table Definitions

    {% do run_query("""

    CREATE OR REPLACE TABLE RAW.artist(
        ArtistId numeric primary key,
        Name varchar,
        Birthyear numeric,
        Country varchar
    );

    """) %}

{% endmacro %}