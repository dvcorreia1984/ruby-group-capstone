require './app'
require './write'

def music_json
  data = {
    id: @music.id,
    publish_date: @music.publish_date,
    on_spotify: @music.on_spotify
  }

  write_file(data, 'music.json')
end

def genre_json
  data = {
    id: @genre.id,
    name: @genre.name
  }

  write_file(data, 'genre.json')
end
