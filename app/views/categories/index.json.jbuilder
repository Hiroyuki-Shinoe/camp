json.array!(@categories) do |category|
  json.extract! category, :title, :type
  json.url category_url(category, format: :json)
end