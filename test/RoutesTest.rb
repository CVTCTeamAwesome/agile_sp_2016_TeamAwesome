require 'test_helper'

class HomeRoutesTest < ActionController::TestCase
  test "should route to display" do
    assert_routing '/display', { controller: "home", action: "display" }
  end
 
  test "must route to home index" do
    assert_routing '/', controller: "home", action: "index"
  end
  
  test "should route to create article" do
    assert_routing({ method: 'post', path: '/decks' }, { controller: "decks", action: "create" })
  end
  
  test "should route to deck display" do
    assert_routing({ method: 'post', path: '/displayDeck'},{ controller: "home", action: "render_partial_deck"})
  end
  
  test "should route to card display" do
    assert_routing({ method: 'post', path: '/displayCard'},{ controller: "home", action: "render_partial_card"})
  end
  
  #Test for when adding editDeck functionality
  test "should route to deck setting/editing" do
    assert_routing({ method: 'post', path: '/editDeck'},{ controller: "decks", action: "render_partial_editDeck"})
  end
  
  #Test for when adding editCard functionality
  test "should route to card setting/editing" do
    assert_routing({ method: 'post', path: '/editCard'},{ controller: "decks", action: "render_partial_editCard"})
  end
end