json.extract! book, :id, :title, :author, :released_at, :created_at, :updated_at
json.url book_url(book, format: :json)
