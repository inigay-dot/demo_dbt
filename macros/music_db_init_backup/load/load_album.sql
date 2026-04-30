{% macro load_album() %}

-- Data loading

    {% do run_query("""

    COPY INTO MUSIC.RAW.album
    FROM @MUSIC.RAW.s3_data/music/Album.csv
    FILE_FORMAT=(FORMAT_NAME=MUSIC.RAW.CLASSIC_CSV);

    """) %}

{% endmacro %}