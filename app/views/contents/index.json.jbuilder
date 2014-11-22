json.array!(@contents) do |content|
  json.extract! content, :category_id, :body
  json.url content_url(content, format: :json)
end