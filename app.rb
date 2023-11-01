require './book'
require './label'
require './read'
require './write_json'

class App
  attr_accessor :book, :music_album, :game, :genre, :label, :author

  def initialize
    @book = nil
    @music_album = nil
    @game = nil
    @genre = nil
    @label = nil
    @author = nil
  end

  def list_all_books
    if read_file('book.json') == []
      puts 'No book available!'
    else
      read_file('book.json').each_with_index do |book, index|
        print "[Book #{index + 1}] - BookID: #{book['id']}, Published date: #{book['publish_date']}, "
        print "Publisher: #{book['publisher']}, Cover state: #{book['cover_state']}, "
        print "Title: #{book['label']['title']}, Color: #{book['label']['color']} \n"
      end
    end
  end

  def list_all_music_albums; end

  def list_all_games; end

  def list_all_genres; end

  def list_all_labels
    if read_file('label.json') == []
      puts 'No label found!'
    else
      read_file('label.json').each do |label|
        puts "LabelID: #{label['id']}, Title: #{label['title']}"
      end
    end
  end

  def list_all_authors; end

  def add_a_book
    puts 'Enter the published date(dd/mm/yy):'
    publish_date = gets.chomp

    puts 'Enter the publisher:'
    publisher = gets.chomp

    puts 'Enter the cover state:'
    cover_state = gets.chomp.downcase

    puts 'Enter label title:'
    title = gets.chomp

    puts 'Enter label color:'
    color = gets.chomp

    book = Book.new(publish_date, publisher, cover_state)
    label = Label.new(title, color)

    label.add_item(book)

    @book = book
    book_json
    @label = label
    label_json
    puts 'Book added successfully!'
  end

  def add_a_music_album; end

  def add_a_game; end
end
