json.array!(@memos) do |memo|
  json.extract! memo, :id, :title, :body, :date
  json.url memo_url(memo, format: :json)
end
