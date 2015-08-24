json.array!(@products) do |product|
  json.extract! product, :id, :name, :company, :about_the_brand
  json.url product_url(product, format: :json)
end
