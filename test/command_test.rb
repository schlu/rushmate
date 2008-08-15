require File.dirname(__FILE__) + "/helper"

class CommandText < Test::Unit::TestCase
  def setup
    
  end
  
  def test_shell
    rush_shell = Rushmate::Command.new.shell
    assert_not_nil rush_shell
    assert rush_shell.is_a?(Rush::Shell)
  end
  
  def test_execute
    rush_output = Rushmate::Command.new.execute("root")
    assert_not_nil(rush_output)
    assert rush_output.is_a?(Rush::Dir)
  end
  
  def test_method_missing
    rush_output = Rushmate::Command.new.root
    assert_not_nil(rush_output)
    assert rush_output.is_a?(Rush::Dir)
  end
  
  def test_exit
    exit = Rushmate::Command.new.exit
    assert_not_nil(exit)
    assert_equal(Rushmate::Exit, exit)
  end
  
  def test_user_input
    user_input = Rushmate::Command.new.user_input
    assert_not_nil(user_input)
    assert_equal(Rushmate::UserInput, user_input)
  end
  
  def test_initialize_should_call_block
    assert_nil($last_res)
    Rushmate::Command.new {
      root
    }
    assert_not_nil($last_res)
  end
  
  def test_should_mixin_textmate_helper
    assert Rushmate::Command.new.respond_to?(:project_directory)
  end
end