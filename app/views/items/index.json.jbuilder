json.array!(@items) do |item|
  json.extract! item, :user_id, :title, :url, :price, :cat_id
  json.url item_url(item, format: :json)
end