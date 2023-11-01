require './app'
require './write'

def book_json
  data = {
    id: @book.id,
    publish_date: @book.publish_date,
    publisher: @book.publisher,
    cover_state: @book.cover_state,
    label: {
      title: @book.label.title,
      color: @book.label.color
    }
  }

  write_file(data, 'book.json')
end

def label_json
  data = {
    id: @label.id,
    title: @label.title,
    color: @label.color
  }

  write_file(data, 'label.json')
end
