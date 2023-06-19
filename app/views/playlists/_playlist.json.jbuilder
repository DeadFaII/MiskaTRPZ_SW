json.extract! playlist, :id, :playlistName, :playlistDescription, :creationDate, :isPublic, :created_at, :updated_at
json.url playlist_url(playlist, format: :json)
