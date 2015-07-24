json.array!(@cityweathers) do |cityweather|
  json.extract! cityweather, :id, :city
  json.url cityweather_url(cityweather, format: :json)
end
