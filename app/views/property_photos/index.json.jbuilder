json.array!(@property_photos) do |property_photo|
  json.extract! property_photo, :id, :source, :caption, :property_id
  json.url property_photo_url(property_photo, format: :json)
end
