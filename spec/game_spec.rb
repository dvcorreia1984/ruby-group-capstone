require_relative '../game.rb'
require_relative '../app.rb'

describe Game do
  it 'id should be an integer' do
    game = Game.new(1, '2019-01-01', true, true)
    expect(game.id).to be_a(Integer)
  end
end
