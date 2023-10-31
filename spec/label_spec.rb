require './label'
require './item'

describe Label do
  label1 = Label.new("Education", "Blue")

  describe "if parameters are passed correctly" do
    it "should return the correct parameters" do
      expect(label1.title).to eq 'Education'
      expect(label1.color).to eq 'Blue'
    end
  end

  describe "#add_item" do
    it "should add an item to the items array" do
      item1 = Item.new("20/10/2020")
      label1.add_item(item1)
      expect(label1.items).to include item1
    end
  end
end
