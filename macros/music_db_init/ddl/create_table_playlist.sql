{% macro create_table_playlist() %}

-- Table Definitions

    {% do run_query("""

    CREATE OR REPLACE TABLE RAW.playlist(
        PlaylistId numeric primary key,
        Name varchar
    );

    """) %}

{% endmacro %}