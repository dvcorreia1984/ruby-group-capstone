require '../genre'

describe Genre do
  it 'should have name' do
    genre = Genre.new('Lamhe')
    expect(author.name).to eq('Lamhe')
  end
end
