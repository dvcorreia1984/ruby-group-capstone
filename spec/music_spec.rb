require './music'

describe MusicAlbum do
  music = MusicAlbum.new('20/10/2023', false)

  describe 'if parameters are passed correctly' do
    it 'should return the correct parameters' do
      expect(music.publish_date).to eq '20/10/2023'
      expect(music.on_spotify).to eq(false)
    end
  end

  describe '#can_be_archieved?' do
    context "if parent_result & @on_spotify == 'true'" do
      it 'should return true' do
        expect(music.can_be_archived?).to eq(false)
      end
    end
  end
end
