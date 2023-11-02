
require './app'
require './write'

def genre_json
  data = {
    id: @book.id,
    publish_date: @book.publish_date,
    publisher: @book.name,
  }

  write_file(data, 'book.json')
end