class Player
  attr_reader :name, :deck

  def initialize (name, deck)
    @name = name
    @deck = deck
    @has_lost = false
  end

  def has_lost?
    if @deck.cards.empty? 
     @has_lost = true
    else
     @has_lost = false
    end 
 end

  def remove_card
    cards.delete_at(0)
  end

end
