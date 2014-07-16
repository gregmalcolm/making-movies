json.array!(@movies_actors) do |movies_actor|
  json.extract! movies_actor, :id, :belongs_to, :belongs_to
  json.url movies_actor_url(movies_actor, format: :json)
end
