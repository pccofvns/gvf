json.array!(@publications) do |publication|
  json.extract! publication, :id, :author, :source, :title, :date, :url, :pub_type
  json.url publication_url(publication, format: :json)
end
