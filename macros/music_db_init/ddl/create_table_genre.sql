{% macro create_table_genre() %}

-- Table Definitions

    {% do run_query("""

    CREATE OR REPLACE TABLE RAW.genre(
        GenreId numeric primary key,
        Name varchar
    );

    """) %}

{% endmacro %}