require_relative '../game'
require_relative '../app'

describe Game do
  context 'when the game is created with valid parameters' do
    let(:game) { Game.new('2019-01-01', true, true, Author.new('John', 'Doe')) }

    it 'should have an integer ID' do
      expect(game.id).to be_a(Integer)
      expect(game.id).to be >= 1
      expect(game.id).to be <= 1000
    end

    describe 'with correct parameters' do
      it 'should return the correct parameters' do
        expect(game.publish_date).to eq '2019-01-01'
        expect(game.multiplayer).to eq true
      end

      it 'should return the correct parameters' do
        expect(game.publish_date).not_to eq '2019-01-02'
        expect(game.multiplayer).not_to eq false
      end
    end

    describe '#get_valid_multiplayer_input' do
    context 'when user enters "y"' do
      it 'returns true' do
        app = App.new
        allow(app).to receive(:gets).and_return('y')

        result = app.get_valid_multiplayer_input

        expect(result).to be(true)
      end
    end

    context 'when user enters "n"' do
      it 'returns false' do
        app = App.new
        allow(app).to receive(:gets).and_return('n')

        result = app.get_valid_multiplayer_input

        expect(result).to be(false)
      end
    end

    context 'when user enters an invalid input' do
      it 'asks for input again and returns the correct result' do
        app = App.new
        allow(app).to receive(:gets).and_return('invalid', 'y')

        result = app.get_valid_multiplayer_input

        expect(result).to be(true)
      end
    end
  end

  end
end
