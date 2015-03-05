json.array!(@queries) do |query|
  json.extract! query, :id, :query, :format, :preppend, :append, :separator
  json.url query_url(query, format: :json)
end
