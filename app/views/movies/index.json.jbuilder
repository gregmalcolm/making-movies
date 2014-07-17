json.array!(@movies) do |movie|
  json.extract! movie, :id, :name, :year, :description
  json.url movie_url(movie, format: :json)
end
