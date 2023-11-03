require_relative '../author'
require_relative '../book'

describe Author do
  let(:author) { Author.new('John', 'Doe') }
  let(:book) { Book.new('The Book', author, 'pink') }
  let(:label) { Label.new('The Label', author) }

  it 'should have last_name' do
    author = Author.new('John', 'Doe')
    expect(author.last_name).to eq('Doe')
  end

  it 'should have first_name' do
    author = Author.new('John', 'Doe')
    expect(author.first_name).to eq('John')
  end

  it 'should associate and add an item to the author' do
    author.add_item(book)
    expect(book.author).to eq(author)
    expect(author.items).to include(book)
  end
end
