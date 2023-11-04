require './item'
require './label'
require './genre'
require './author'

describe Item do
  item1 = Item.new('20/10/2020')

  describe 'if a parameter passed correctly' do
    it 'should return the correct parameter' do
      expect(item1.publish_date).to eq '20/10/2020'
    end
  end

  describe '#add_label' do
    it 'should add the label correctly' do
      label1 = Label.new('Education', 'Blue')
      item1.add_label(label1)
      expect(item1.label).to be label1
    end
  end

  describe '#add_author' do
    it 'should add the label correctly' do
      author1 = Author.new('Ellen', 'White')
      item1.add_author(author1)
      expect(item1.author).to be author1
    end
  end

  describe '#add_genre' do
    it 'should add the label correctly' do
      genre1 = Genre.new('Spiritual')
      item1.add_genre(genre1)
      expect(item1.genre).to be genre1
    end
  end

  describe '#archive' do
    it 'should return true if archived' do
      item1.publish_date = '20/10/2010'
      expect(item1.can_be_archived?).to be true
    end

    it 'should test if item is moved to archive' do
      item1.move_to_archive
      expect(item1.archived).to be true
    end
  end
end
