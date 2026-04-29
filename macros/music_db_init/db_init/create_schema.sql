{% macro create_schema() %}

    {% do run_query("
        CREATE OR REPLACE SCHEMA MUSIC.RAW
    ") %}

{% endmacro %}