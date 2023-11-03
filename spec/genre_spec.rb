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
    genre1 = Genre.new('Drama')
    item = double('Item')
    genre1.add_item(item)

    expect(item).to receive(:genre=).with(genre1)

    expect(genre1.items).to include(item)
  end
end
