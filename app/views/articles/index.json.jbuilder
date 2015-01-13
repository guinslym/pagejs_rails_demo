json.array!(@articles) do |article|
  json.extract! article, :id, :title, :about, :user_picture_link, :user_name, :country
  json.url article_url(article, format: :json)
end
