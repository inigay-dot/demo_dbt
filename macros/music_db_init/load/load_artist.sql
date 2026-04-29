{% macro load_artist() %}

-- Data loading

    {% do run_query("""

    COPY INTO RAW.artist
    FROM @s3_data/music/Artist.csv
    FILE_FORMAT=(FORMAT_NAME=CLASSIC_CSV);

    """) %}

{% endmacro %}