json.extract! item_list, :id, :prod_name, :mg, :price, :created_at, :updated_at
json.url item_list_url(item_list, format: :json)
