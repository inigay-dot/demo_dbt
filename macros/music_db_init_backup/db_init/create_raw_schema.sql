{% macro create_raw_schema() %}

    {% do run_query("
        CREATE OR REPLACE SCHEMA MUSIC.RAW
    ") %}

{% endmacro %}