require 'test_helper'

class CardTest < ActiveSupport::TestCase
  
  test "can create card without question_text" do
    card = Card.new
    card.name = "Test Card"
    card.answer_text = "Answer Text"
    assert card.save  # This 'should' fail as Question_Text should be required.  Change after fix implemented.
  end
  
end
