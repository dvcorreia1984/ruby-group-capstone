# add_a_game.rb

class AddGame
  def add_a_game(app)
    puts "Enter title: "
    title = gets.chomp

    puts "Is this game multiplayer? (yes or no)"
    multiplayer = gets.chomp.downcase == 'yes'

    puts "Enter last date played (YYYY-MM-DD): "
    last_played_at = gets.chomp

    puts "Enter author: "
    author = gets.chomp

    # Assuming you have a 'Game' class defined
    game = Game.new(last_played_at, multiplayer, title, author, false)

    app.all_games ||= []
    app.all_games << game
    puts "Game added: #{game.title}"
  end
end
