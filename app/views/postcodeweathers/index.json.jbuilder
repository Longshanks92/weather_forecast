json.array!(@postcodeweathers) do |postcodeweather|
  json.extract! postcodeweather, :id, :postcode
  json.url postcodeweather_url(postcodeweather, format: :json)
end
