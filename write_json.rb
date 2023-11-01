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

def game_json
  data = {
    id: @game.id,
    publish_date: @game.publish_date,
    multiplayer: @game.multiplayer,
    last_played_at: @game.last_played_at,
    archived: @game.archived
  }

  write_file(data, 'game.json')
end

def author_json
  data = {
    id: @author.id,
    first_name: @author.first_name,
    last_name: @author.last_name
  }

  write_file(data, 'author.json')
end
