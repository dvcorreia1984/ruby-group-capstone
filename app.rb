class App
  def initialize
    @all_books = nil
    @all_music_albums = nil
    @all_movies = nil
    @all_genres = nil
    @all_labels = nil
    @all_authors = nil
    @all_sources = nil
    @all_games = []
  end

  def list_all_books; end

  def list_all_music_albums; end

  def list_all_movies; end

  def list_all_genres; end

  def list_all_labels; end

  def list_all_authors; end

  def list_all_sources; end

  def add_a_book; end

  def add_a_music_album; end

  def add_a_movie; end

  def add_a_game
    puts 'What is the name of the game?'
    title = gets.chomp.to_s

    multiplayer = get_valid_multiplayer_input

    puts 'When last did you play the game?'
    last_played_at = gets.chomp.to_s
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
