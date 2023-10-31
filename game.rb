class Game < Item
  attr_accessor :multiplayer, :last_played_at, :author, :archived

  def initialize(publish_date, multiplayer, last_played_at, _author, archived)
    super(publish_date, archived)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
    @author
  end

  private

  def can_be_archived?
    ten_years_ago = Date.today.prev_year(10)

    Date.parse(@publish_date) < ten_years_ago

    # add logic to check if the game has been played in the last 2 years
    # if it has, it should not be archived
    # if it hasn't, it should be archived
  end
end
