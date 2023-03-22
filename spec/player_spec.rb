require 'rspec'
require './lib/card'
require './lib/deck'
require './lib/player'

RSpec.describe Player do
  it "exists" do
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)    
    card3 = Card.new(:heart, 'Ace', 14)    
    cards = [card1, card2, card3]
    deck = Deck.new(cards)
    player = Player.new('Clarisa', deck)

    expect(player).to be_an_instance_of(Player)
  end

  it "has a name" do
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)    
    card3 = Card.new(:heart, 'Ace', 14)    
    cards = [card1, card2, card3]
    deck = Deck.new(cards)
    player = Player.new('Clarisa', deck)

    expect(player.name).to eq('Clarisa')
  end

  it "has a deck" do
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)    
    card3 = Card.new(:heart, 'Ace', 14)    
    cards = [card1, card2, card3]
    deck = Deck.new(cards)
    player = Player.new('Clarisa', deck)

    expect(player.deck).to be_a(Deck)
  end

  it "starts with players not losing" do
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)    
    card3 = Card.new(:heart, 'Ace', 14)    
    cards = [card1, card2, card3]
    deck = Deck.new(cards)
    player = Player.new('Clarisa', deck)

    expect(player.has_lost?).to eq(false)
  end

  it "lets a player remove the top card" do
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)    
    card3 = Card.new(:heart, 'Ace', 14)    
    cards = [card1, card2, card3]
    deck = Deck.new(cards)
    player = Player.new('Clarisa', deck)

    expect(player.deck.remove_card).to be(card1)
  end

  it "says a player has lost when they have no more cards in their deck" do
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)    
    card3 = Card.new(:heart, 'Ace', 14)    
    cards = [card1, card2, card3]
    deck = Deck.new(cards)
    player = Player.new('Clarisa', deck)
    player.deck.remove_card
    player.deck.remove_card
    player.deck.remove_card

    expect(player.has_lost?).to eq(true)
    require 'pry'; binding.pry
  end

end
