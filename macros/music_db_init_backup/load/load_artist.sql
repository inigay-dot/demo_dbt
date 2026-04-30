{% macro load_artist() %}

-- Data loading

    {% do run_query("""

    COPY INTO MUSIC.RAW.artist
    FROM @MUSIC.RAW.s3_data/music/Artist.csv
    FILE_FORMAT=(FORMAT_NAME=MUSIC.RAW.CLASSIC_CSV);

    """) %}

{% endmacro %}