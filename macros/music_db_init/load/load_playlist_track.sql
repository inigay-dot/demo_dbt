{% macro load_playlist_track() %}

-- Data loading

    {% do run_query("""

    COPY INTO RAW.playlist_track
    FROM @s3_data/music/PlaylistTrack.csv
    FILE_FORMAT=(FORMAT_NAME=CLASSIC_CSV);

    """) %}

{% endmacro %}