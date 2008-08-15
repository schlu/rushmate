require File.dirname(__FILE__) + "/helper"

class UserInputTest < Test::Unit::TestCase
  def setup
    
  end
  
  def test_quick_menu_from_array_returns_the_string_the_user_selected
    menu_items = %w[foo bar baz]
    TextMate::UI.stubs(:menu).returns(0)
    assert_equal("foo", Rushmate::UserInput.quick_menu_from_array(menu_items))
    TextMate::UI.stubs(:menu).returns(1)
    assert_equal("bar", Rushmate::UserInput.quick_menu_from_array(menu_items))
    TextMate::UI.stubs(:menu).returns(2)
    assert_equal("baz", Rushmate::UserInput.quick_menu_from_array(menu_items))
  end
end