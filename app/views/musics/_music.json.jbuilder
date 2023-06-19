json.extract! music, :id, :musicName, :musicDescription, :musicText, :publishDate, :isFree, :created_at, :updated_at
json.url music_url(music, format: :json)
