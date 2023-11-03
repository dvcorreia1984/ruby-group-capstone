require '../genre'

describe Genre do
  it 'should have name' do
    Genre.new('Lamhe')
    expect(author.name).to eq('Lamhe')
  end
end
