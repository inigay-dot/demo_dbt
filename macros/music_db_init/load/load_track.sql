{% macro load_track() %}

-- Data loading

    {% do run_query("""

    COPY INTO RAW.track
    FROM @s3_data/music/Track.csv
    FILE_FORMAT=(FORMAT_NAME=CLASSIC_CSV);

    """) %}

{% endmacro %}