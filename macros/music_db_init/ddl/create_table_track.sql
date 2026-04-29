{% macro create_table_track() %}

-- Table Definitions

    {% do run_query("""

    CREATE OR REPLACE TABLE RAW.track(
        TrackId numeric primary key,
        Name varchar,
        MediaTypeId numeric,
        GenreId numeric,
        AlbumId numeric,
        Composer varchar,
        Milliseconds numeric,
        Bytes numeric,
        UnitPrice numeric
    );

    """) %}

{% endmacro %}