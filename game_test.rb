require './game.rb'

game1 = Game.new('2009-01-01', true, '2019-01-02')

puts game1.can_be_archived?
