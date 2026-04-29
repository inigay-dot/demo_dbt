{% macro load_album() %}

-- Data loading

    {% do run_query("""

    COPY INTO RAW.album
    FROM @s3_data/music/Album.csv
    FILE_FORMAT=(FORMAT_NAME=CLASSIC_CSV);

    """) %}

{% endmacro %}