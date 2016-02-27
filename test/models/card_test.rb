require 'test_helper'

class CardTest < ActiveSupport::TestCase
  
  test "can create card without question_text" do
    card = Card.new
    card.name = "Test Card"
    card.answer_text = "Answer Text"
    assert !card.save  # This 'should' fail as Question_Text should be required.  Change after fix implemented.
    assert card.errors[:question_text].include?("can't be blank")
  end
  
  test "can create card with either question_text" do
    card = Card.new
    card.name = "Test Card2"
    card.answer_text = "Answer Text"
    card.question_text = "This is question_text"
    assert card.save
  end
  
  test "can create card with picture" do
    card = Card.new
    card.name = "Test Card2"
    card.answer_text = "Answer Text"
    card.question_text = "This is question_text"
    card.picture = File.new('test/models/ineedit.jpg')
    assert card.save
  end
  
  test "can create card with picture and no question_text" do
    card = Card.new
    card.name = "Test Card2"
    card.answer_text = "Answer Text"
    card.picture = File.new('test/models/ineedit.jpg')
    assert card.save
  end
  
end
