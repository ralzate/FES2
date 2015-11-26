json.array!(@airports) do |airport|
  json.extract! airport, :id, :name, :city_id, :department
  json.url airport_url(airport, format: :json)
end
