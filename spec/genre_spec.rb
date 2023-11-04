require './genre'

describe Genre do
  it 'should have a name' do
    genre1 = Genre.new('Lamhe')
    expect(genre1.name).to eq('Lamhe')
  end

  it 'should have a unique ID' do
    genre1 = Genre.new('Action')
    genre2 = Genre.new('Adventure')
    expect(genre1.id).not_to eq(genre2.id)
  end

  it 'should have an empty items collection initially' do
    genre1 = Genre.new('Comedy')
    expect(genre1.items).to be_empty
  end

  it 'should add items and associate them correctly' do
    genre1 = Genre.new('Comedy')
    item1 = Item.new('20/10/2020')
    genre1.add_item(item1)
    expect(genre1.items).to include(item1)
    expect(item1.genre).to be(genre1)
  end
end
