json.array!(@token_holders) do |token_holder|
  json.extract! token_holder, :id, :name, :token
  json.url token_holder_url(token_holder, format: :json)
end
