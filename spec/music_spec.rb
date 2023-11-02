require '../music'

describe Music do
  music = MusicAlbum.new('20/10/2023', true)

  describe 'if parameters are passed correctly' do
    it 'should return the correct parameters' do
      expect(book.publish_date).to eq '20/10/2023'
      expect(book.on_spotify).to eq true
    end
  end

  describe '#can_be_archieved?' do
    context "if parent_result or @on_spotify == 'true'" do
      it 'should return true' do
        expect(music.can_be_archived?).to eq(true)
      end
    end
  end
end
