{% macro load_playlist() %}

-- Data loading

    {% do run_query("""

    COPY INTO MUSIC.RAW.playlist
    FROM @MUSIC.RAW.s3_data/music/Playlist.csv
    FILE_FORMAT=(FORMAT_NAME=MUSIC.RAW.CLASSIC_CSV);

    """) %}

{% endmacro %}