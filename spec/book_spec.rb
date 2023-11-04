require './book'

describe Book do
  book = Book.new('20/10/2023', 'EGW Estate', 'bad')

  describe 'if parameters are passed correctly' do
    it 'should return the correct parameters' do
      expect(book.publish_date).to eq '20/10/2023'
      expect(book.publisher).to eq 'EGW Estate'
      expect(book.cover_state).to eq 'bad'
    end
  end

  describe '#can_be_archieved?' do
    context "if parent_result or @cover_state == 'bad'" do
      it 'should return true' do
        expect(book.can_be_archived?).to eq(true)
      end
    end
  end
end
