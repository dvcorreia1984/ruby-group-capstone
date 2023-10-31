require './book'
require './label'

class App
  def initialize
    @all_books = []
    @all_music_albums = nil
    @all_movies = nil
    @all_genres = nil
    @all_labels = []
    @all_authors = nil
    @all_sources = nil
  end

  def list_all_books
    if @all_books.empty?
      puts "No book available!"
    else
      @all_books.each_with_index do |book, index|
        print "[Book #{index + 1}] - BookID: #{book.id} Published date: #{book.publish_date}, "
        print "Publisher: #{book.publisher}, Cover state: #{book.cover_state}, "
        print "Title: #{book.label.title}, Color: #{book.label.color} \n"
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
    if @all_labels.empty?
      puts "No label found!"
    else
      @all_labels.each do |label|
        puts "LabelID: #{label.id}, Title: #{label.title}"
      end
    end
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

    puts "Enter label title:"
    title = gets.chomp

    puts "Enter label color:"
    color = gets.chomp

    book = Book.new(publish_date, publisher, cover_state)
    label = Label.new(title, color)

    label.add_item(book)

    @all_books << book
    @all_labels << label
    puts "Book added successfully!"
  end

  def add_a_music_album
  end

  def add_a_movie
  end
end
