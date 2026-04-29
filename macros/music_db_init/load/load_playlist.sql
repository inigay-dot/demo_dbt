{% macro load_playlist() %}

-- Data loading

    {% do run_query("""

    COPY INTO RAW.playlist
    FROM @s3_data/music/Playlist.csv
    FILE_FORMAT=(FORMAT_NAME=CLASSIC_CSV);

    """) %}

{% endmacro %}