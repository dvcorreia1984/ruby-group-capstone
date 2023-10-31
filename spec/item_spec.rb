require './item'
require './label'

describe Item do
  item1 = Item.new("20/10/2020")

  describe "if a parameter passed correctly" do
    it "should return the correct parameter" do
      expect(item1.publish_date).to eq '20/10/2020'
    end
  end

  describe "#add_label" do
    it "should add the label correctly" do
      label1 = Label.new("Education", "Blue")
      item1.add_label(label1)
      expect(item1.label).to be label1
    end
  end
end
