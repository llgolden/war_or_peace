class Player
  attr_reader :name, :deck

  def initialize (name, deck)
    @name = name
    @deck = deck
  end

  def has_lost?
    if @deck.cards.empty? 
     true
    else
     false
    end 
 end

  def remove_card
    cards.delete_at(0)
  end

end
