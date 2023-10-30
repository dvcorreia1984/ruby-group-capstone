require './item'
require './label'

label1 = Label.new("Education", "Blue")
item1 = Item.new('20/10/2020')

label1.add_item(item1)
puts label1.items[0].label.title
