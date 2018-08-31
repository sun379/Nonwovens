json.array!(@pauctions) do |auction|
  json.extract! product, :id, :title, :auction_details
  json.url auction_url(auction, format: :json)
end