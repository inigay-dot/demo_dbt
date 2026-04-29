{% macro create_tables() %}

-- Table Definitions

    {{ create_album_table() }}
    {{ create_artist_table() }}
    {{ create_genre_table() }}
    {{ create_media_type_table() }}
    {{ create_playlist_table() }}
    {{ create_playlist_track_table() }}
    {{ create_track_table() }}

{% endmacro %}