{% macro create_database() %}

    {% do run_query("
        CREATE OR REPLACE DATABASE MUSIC
    ") %}

{% endmacro %}