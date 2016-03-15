json.array!(@properties) do |property|
  json.extract! property, :id, :name, :description, :rooms, :bathromms, :construction, :ground, :parking, :price, :agent_id, :property_type_id, :property_category_id, :city_id
  json.url property_url(property, format: :json)
end
