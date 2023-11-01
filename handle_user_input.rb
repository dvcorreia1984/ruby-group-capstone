def handle_user_input(user_input, app)
  actions = {
    1 => -> { app.list_all_books },
    2 => -> { app.list_all_music_albums },
    3 => -> { app.list_all_games },
    4 => -> { app.list_all_genres },
    5 => -> { app.list_all_labels },
    6 => -> { app.list_all_authors },
    7 => -> { app.list_all_sources },
    8 => -> { app.list_all_games },
    9 => -> { app.add_a_book },
    10 => -> { app.add_a_music_album },
    11 => -> { app.add_a_movie },
    12 => -> { app.add_a_game },
    13 => -> { exit_program }
  }

  action = actions[user_input]

  if action
    action.call
  else
    puts 'Invalid option! Please enter a valid number'
  end
end
