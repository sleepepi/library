json.array!(@books) do |book|
  json.extract! book, :id, :name, :author, :borrower, :available, :checkout_date
  json.url book_url(book, format: :json)
end
