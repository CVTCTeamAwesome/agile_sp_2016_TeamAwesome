require 'test_helper'

class CardTest < ActiveSupport::TestCase
  test "can't create card without Question text" do
    card = Card.new
    card.name = "Card Name"
    assert !card.save # should fail because there is no question_text.
  end
end
