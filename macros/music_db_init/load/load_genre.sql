{% macro load_genre() %}

-- Data loading

    {% do run_query("""

    COPY INTO RAW.genre
    FROM @s3_data/music/Genre.csv
    FILE_FORMAT=(FORMAT_NAME=CLASSIC_CSV);

    """) %}

{% endmacro %}