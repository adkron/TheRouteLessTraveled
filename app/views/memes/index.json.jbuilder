json.array!(@memes) do |meme|
  json.extract! meme, :id, :uri, :recommended
  json.url meme_url(meme, format: :json)
end
