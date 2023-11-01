require './item'
require './game'
require './read'
require './write_json'
require './author'
require './book'
require './label'

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

  def list_all_movies; end

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

  def list_all_authors
      if read_file('author.json') == []
        puts "No authors available!"
      else
        read_file('author.json').each_with_index do |author|
          print "Author ID: #{author['id']}, "
          print "Name: #{author['first_name']} #{author['last_name']}"
          puts "\n"
        end
      end
  end

  def list_all_games
    if read_file('game.json') == []
      puts "No games available!"
    else
      read_file('game.json').each_with_index do |game|
        print "Game ID: #{game['id']}, "
        print "Last played at #{game['last_played_at']} "
        print "(multiplayer)" if game['multiplayer']
        print "(archived)" if game['archived']
        puts "\n"
      end
    end
  end

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

  def add_a_game
    puts 'Enter the date the game was published (YYYY-MM-DD)'
    publish_date = gets.chomp.to_s

    puts 'Enter the First Name of the Author'
    first_name = gets.chomp.to_s

    puts 'Enter the Last Name of the Author'
    last_name = gets.chomp.to_s
    author = Author.new(first_name, last_name)

    multiplayer = get_valid_multiplayer_input

    puts 'When last did you play the game? (YYYY-MM-DD)'
    last_played_at = gets.chomp.to_s

    puts 'Is the game archived? (true/false):'
    archived = gets.chomp.to_s == 'true'

    game = Game.new(publish_date, multiplayer, last_played_at, author)

    @game = game
    game_json

    author = Author.new(first_name, last_name)

    @author = author
    author_json

    puts "The game was added."

  end
end

def get_valid_multiplayer_input
  loop do
    puts 'Is the game multiplayer? (y/n)'
    answer = gets.chomp.downcase
    return answer == 'y' if %w[y n].include?(answer)
    puts 'Invalid input. Please enter "y" or "n."'
  end
end
end
