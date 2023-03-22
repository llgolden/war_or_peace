class Deck
  attr_reader :cards

  def initialize (cards)
    @cards = cards
  end

  def rank_of_card_at(index)
    @cards[index].rank
  end

  def high_ranking_cards
    cards.select do |card|
      card.rank > 10
    end
  end

  def percent_high_ranking
    (high_ranking_cards.count / cards.count.to_f * 100).round(2) 
  end

  def remove_card
    cards.delete_at(0)
  end

  def add_card(card)
    cards.push(card)
  end

end
