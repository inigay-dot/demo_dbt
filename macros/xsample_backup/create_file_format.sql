{% macro create_file_format() %}

    {% set sql %}
        CREATE OR REPLACE FILE FORMAT MUSIC.RAW.CLASSIC_CSV
        TYPE = CSV
        SKIP_HEADER = 1
        FIELD_DELIMITER = ','
        FIELD_OPTIONALLY_ENCLOSED_BY = $$"$$
    {% endset %}

    {% do run_query(sql) %}

{% endmacro %}
