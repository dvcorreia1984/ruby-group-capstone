require './item'

class MusicAlbum < Item
    attr_accessor :on_spotify
  
    def initialize(publish_date, on_spotify)
      super(publish_date)
      @on_spotify = on_spotify
    end
  
    def can_be_archived?
      parent_result = super

      parent_result && @on_spotify == true ? true : false
    end
  end