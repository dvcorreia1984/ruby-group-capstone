require './item'
require './game'
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

  def list_all_books; end

  def list_all_music_albums; end

  def list_all_movies; end

  def list_all_genres; end

  def list_all_labels; end

  def list_all_authors; end

  def list_all_sources; end

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

  def add_a_book; end

  def add_a_music_album; end

  def add_a_movie; end

  def add_a_game

    puts 'Enter the date the game was published (YYYY-MM-DD)'
    publish_date = gets.chomp.to_s

    puts 'Enter the author of the game'
    author = gets.chomp.to_s

    multiplayer = get_valid_multiplayer_input

    puts 'When last did you play the game? (YYYY-MM-DD)'
    last_played_at = gets.chomp.to_s

    puts 'Is the game archived? (true/false):'
    archived = gets.chomp.to_s == 'true'

    game = Game.new(publish_date, multiplayer, last_played_at)

    @game = game
    game_json

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
