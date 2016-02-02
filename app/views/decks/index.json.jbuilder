json.array!(@decks) do |deck|
  json.extract! deck, :id, :title, :description, :creation_date, :last_modified
  json.url deck_url(deck, format: :json)
end
