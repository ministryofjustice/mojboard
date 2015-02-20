json.array!(@posts) do |post|
  json.extract! post, :id, :posted_by, :headline, :detail
  json.url post_url(post, format: :json)
end
