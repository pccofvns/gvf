json.array!(@news_events) do |news_event|
  json.extract! news_event, :id, :title, :description, :detail_url, :on, :image_url
  json.url news_event_url(news_event, format: :json)
end
