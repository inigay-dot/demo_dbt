{% macro create_table_playlist_track() %}

-- Table Definitions

    {% do run_query("""

    CREATE OR REPLACE TABLE RAW.playlist_track(
        PlaylistId numeric,
        TrackId numeric,
        primary key (PlaylistId, TrackId)
    );

    """) %}

{% endmacro %}