require_relative '../game'
require_relative '../app'

describe Game do
  it 'id should be an integer' do
    game = Game.new(1, '2019-01-01', true, true)
    expect(game.id).to be_a(Integer)
  end
end
