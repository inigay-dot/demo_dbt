{% macro load_media_type() %}

-- Data loading

    {% do run_query("""

    COPY INTO RAW.media_type
    FROM @s3_data/music/Media_Type.csv
    FILE_FORMAT=(FORMAT_NAME=CLASSIC_CSV);

    """) %}

{% endmacro %}