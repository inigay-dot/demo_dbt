{% macro load_media_type() %}

-- Data loading

    {% do run_query("""

    COPY INTO MUSIC.RAW.media_type
    FROM @MUSIC.RAW.s3_data/music/Media_Type.csv
    FILE_FORMAT=(FORMAT_NAME=MUSIC.RAW.CLASSIC_CSV);

    """) %}

{% endmacro %}