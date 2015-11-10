json.array!(@charities) do |charity|
  json.extract! charity, :id, :name, :email, :picture
  json.url charity_url(charity, format: :json)
end
