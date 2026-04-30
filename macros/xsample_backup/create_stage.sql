{% macro create_stage() %}

    {% do run_query("""

        CREATE OR REPLACE STAGE MUSIC.RAW.S3_DATA
        URL='s3://mc-snowflake/sample/music/'

    """) %}

{% endmacro %}