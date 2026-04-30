{% macro music_load_tables() %}

-- Load Data

    {{ load_album() }}
    {{ load_artist() }}
    {{ load_genre() }}
    {{ load_media_type() }}
    {{ load_playlist() }}
    {{ load_playlist_track() }}
    {{ load_track() }}

{% endmacro %}