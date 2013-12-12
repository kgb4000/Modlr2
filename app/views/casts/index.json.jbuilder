json.array!(@casts) do |cast|
  json.extract! cast, :name, :company, :description, :dates_locations, :compensation
  json.url cast_url(cast, format: :json)
end
