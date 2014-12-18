json.array!(@motorcycles) do |motorcycle|
  json.extract! motorcycle, :id, :name, :type, :speed
  json.url motorcycle_url(motorcycle, format: :json)
end
