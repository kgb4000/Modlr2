json.array!(@pins) do |pin|
  json.extract! pin, :id, :name, :user_name, :age, :city, :state, :bio, :credits
  json.url pin_url(pin, format: :json)
end
