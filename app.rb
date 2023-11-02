
require './music'
require './read'

class App
  def initialize
    @all_books = nil
    @all_music_albums = nil
    @all_movies = nil
    @all_genres = nil
    @all_labels = nil
    @all_authors = nil
    @all_sources = nil
  end

  def list_all_books
  end

  def list_all_music_albums
    if read_file('music.json') == []
      puts 'No music album available!'
    else
      read_file('music.json').each_with_index do |music, index|
        print "[Music Album #{index + 1}] - Music_AlbumID: #{music['id']}, Published date: #{music['publish_date']}, "
        print "On Spotify: #{music['on_spotify']}"
      end
    end
  end

  def list_all_movies
  end

  def list_all_genres
    if read_file('genre.json') == []
      puts 'No Genre found!'
    else
      read_file('genre.json').each do |genre|
        puts "GenreID: #{genre['id']}, Name: #{genre['name']}"
    end
  end
  end

  def list_all_labels
  end

  def list_all_authors
  end

  def list_all_sources
  end

  def add_a_book
  end

  def add_a_music_album
    
  end

  def add_a_movie
  end
end
