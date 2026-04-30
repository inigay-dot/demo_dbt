{% macro create_table_media_type() %}

-- Table Definitions

    {% do run_query("""

    CREATE OR REPLACE TABLE RAW.media_type(
        MediaTypeId numeric primary key,
        Name varchar
    );

    """) %}

{% endmacro %}