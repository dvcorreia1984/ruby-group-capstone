require 'date'

class Item
  attr_accessor :id, :genre, :author, :source, :label, :publish_date, :archived

  def initialize(publish_date)
    @id = Random.rand(1..1000)
    @genre = nil
    @author = nil
    @label = nil
    @publish_date = publish_date
    @archived = nil
  end

  def add_genre(genre)
    @genre = genre
  end

  def add_author(author)
    @author = author
  end

  def add_label(label)
    @label = label
  end

  def can_be_archived?
    ten_years_ago = Date.today.prev_year(10)

    Date.parse(@publish_date) < ten_years_ago
  end

  def move_to_archive
    return unless can_be_archived?
    @archived = true
  end
end
