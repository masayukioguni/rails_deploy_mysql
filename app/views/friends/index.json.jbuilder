json.array!(@friends) do |friend|
  json.extract! friend, :name, :address
  json.url friend_url(friend, format: :json)
end
