json.array!(@actors) do |actor|
  json.extract! actor, :id, :name, :gender, :bio, :born
  json.url actor_url(actor, format: :json)
end
