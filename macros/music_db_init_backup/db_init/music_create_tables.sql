{% macro music_create_tables() %}

-- Table Definitions

    {{ create_table_album() }}
    {{ create_table_artist() }}
    {{ create_table_genre() }}
    {{ create_table_media_type() }}
    {{ create_table_playlist() }}
    {{ create_table_playlist_track() }}
    {{ create_table_track() }}

{% endmacro %}