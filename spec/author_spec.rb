require_relative '../author.rb'

describe Author do
  it 'should have last_name' do
    author = Author.new('John', 'Doe')
    expect(author.last_name).to eq('Doe')
  end

  it 'should have first_name' do
    author = Author.new('John', 'Doe')
    expect(author.first_name).to eq('John')
  end
end
