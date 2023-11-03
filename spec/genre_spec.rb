require './genre'

describe Genre do
  it 'should have name' do
    genre1 = Genre.new('Lamhe')
    expect(genre1.name).to eq('Lamhe')
  end
end
