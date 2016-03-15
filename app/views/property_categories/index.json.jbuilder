json.array!(@property_categories) do |property_category|
  json.extract! property_category, :id, :name
  json.url property_category_url(property_category, format: :json)
end
