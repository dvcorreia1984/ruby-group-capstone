require './app'
require './display_menu'
require './handle_user_input'

def main
  puts
  puts 'Welcome to Catalog of My Things App!'
  puts

  main_extended
end

def main_extended
  app = App.new

  loop do
    display_menu

    user_input = gets.chomp.to_i

    handle_user_input(user_input, app)
  end
end

def exit_program
  puts 'Thanks for using our App, Goodbye!'
  exit
end

main
