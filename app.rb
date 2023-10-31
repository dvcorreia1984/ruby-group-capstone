require './book'
require './label'

class App
  def initialize
    @all_books = []
    @all_music_albums = nil
    @all_movies = nil
    @all_genres = nil
    @all_labels = nil
    @all_authors = nil
    @all_sources = nil
  end

  def list_all_books
    if @all_books.empty?
      puts "No book available!"
    else
      @all_books.each do |book, index = 0|
        puts "[Book #{index + 1}] - Published date: #{book.publish_date}, Publisher: #{book.publisher}, Cover state: #{book.cover_state}"
      end
    end
  end

  def list_all_music_albums
  end

  def list_all_movies
  end

  def list_all_genres
  end

  def list_all_labels
  end

  def list_all_authors
  end

  def list_all_sources
  end

  def add_a_book
    puts "Enter the published date(dd/mm/yy):"
    publish_date = gets.chomp

    puts "Enter the publisher:"
    publisher = gets.chomp

    puts "Enter the cover state:"
    cover_state = gets.chomp.downcase

    book = Book.new(publish_date, publisher, cover_state)
    @all_books << book
    puts "Book added successfully!"
  end

  def add_a_music_album
  end

  def add_a_movie
  end
end
