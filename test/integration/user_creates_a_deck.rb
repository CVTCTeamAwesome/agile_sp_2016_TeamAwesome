require 'test_helper'

class UserFlowsTest < ActionDispatch::IntegrationTest
  
  test "create a new deck" do
    
    # Visit Home Page
    visit '/'
    page.has_content? 'Flash Cards'
    click_on "Decks"
    
    # On Decks Page

    page.has_content? 'All Decks'
    click_on 'New Deck'
    page.has_content? "New Deck"   

    # On New Deck Page
    fill_in 'Title', :with => 'Calculus'
    fill_in 'Description', :with => 'Calculus I Flash Cards.'
    click_on 'Create Deck'
    
    # On Deck Show Page 
    page.has_content? "Deck was successfully created."
    page.has_content? "Calculus"
  end
  
  test "edit an existing deck" do
    visit '/'
    page.has_content? 'Flash Cards'
    click_on "Decks"
    
    # On Decks Page

    page.has_content? 'All Decks'
    click_on 'Birds'
    
    # On Deck Show Page
    click_on 'Edit'
    
    # On Deck Edit Page
    fill_in 'Description', :with => 'Flash cards with many types of birds.'
    click_on 'Update'
    
    #On Deck Show Page
    page.has_content? "Deck was successfully updated."
    page.has_content? "Flash cards with many types of birds."
    
    
    click_on 'New Card'
    
  end
end