json.array!(@britts) do |britt|
  json.extract! britt, :id, :content, :user_id
  json.url britt_url(britt, format: :json)
end
