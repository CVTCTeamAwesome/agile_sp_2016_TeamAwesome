require 'test_helper'

class DeckTest < ActiveSupport::TestCase
  
  test "create a valid record" do
    deck = Deck.new
    deck.title = "Chicken Flash Cards"
    deck.description = "Cards about chickens"
    
    assert deck.save
  end
  
  test "should not save unless title is filled in" do
    deck = Deck.new
    assert !deck.save
    assert deck.errors[:title].include?("can't be blank")
  end
  
end
