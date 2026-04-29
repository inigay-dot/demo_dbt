{% macro create_star_schema() %}

    {% do run_query("
        CREATE OR REPLACE SCHEMA MUSIC.STAR
    ") %}

{% endmacro %}