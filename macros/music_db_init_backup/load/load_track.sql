{% macro load_track() %}

-- Data loading

    {% do run_query("""

    COPY INTO MUSIC.RAW.track
    FROM @MUSIC.RAW.s3_data/music/Track.csv
    FILE_FORMAT=(FORMAT_NAME=MUSIC.RAW.CLASSIC_CSV);

    """) %}

{% endmacro %}