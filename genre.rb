class Genre
    attr_reader :id, :name
    attr_accessor :items
  
    def initialize(first_name, last_name)
      @id = Random.rand(1000)
      @name = name
      @items = []
    end
  
    def add_item(item)
      item.genre = self
      @items << item
    end
  end