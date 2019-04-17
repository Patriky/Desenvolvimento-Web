json.extract! movie, :id, :name, :gender, :synopsis, :img, :director, :created_at, :updated_at
json.url movie_url(movie, format: :json)
