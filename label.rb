class Label
  attr_accessor :id, :title, :color, :items
  
  def initialize(title, color)
    @id = Random.rand(1..1000)
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    @items << item # A label has many items
    item.add_label(self) # An item belongs to a label
  end
end
