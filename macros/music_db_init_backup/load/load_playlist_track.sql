{% macro load_playlist_track() %}

-- Data loading

    {% do run_query("""

    COPY INTO MUSIC.RAW.playlist_track
    FROM @MUSIC.RAW.s3_data/music/PlaylistTrack.csv
    FILE_FORMAT=(FORMAT_NAME=MUSIC.RAW.CLASSIC_CSV);

    """) %}

{% endmacro %}