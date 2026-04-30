{% macro load_genre() %}

-- Data loading

    {% do run_query("""

    COPY INTO MUSIC.RAW.genre
    FROM @MUSIC.RAW.s3_data/music/Genre.csv
    FILE_FORMAT=(FORMAT_NAME=MUSIC.RAW.CLASSIC_CSV);

    """) %}

{% endmacro %}