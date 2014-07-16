json.array!(@movies) do |movie|
  json.extract! movie, :id, :name, :year, :description, :timestamps
  json.url movie_url(movie, format: :json)
end
