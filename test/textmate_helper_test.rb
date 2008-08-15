require File.dirname(__FILE__) + "/helper"

class TextmateHelperTest < Test::Unit::TestCase
  def setup
    @proxy = Class.new
    @proxy.send(:include, Rushmate::TextmateHelper)
    @instance = @proxy.new
    @instance.stubs(:root).returns({"/root/" => true, "/root/foo.rb" => true, "/root/lib/" => true})
  end
  
  def test_current_word
    ENV["TM_CURRENT_WORD"] = "foo"
    assert_equal("foo", @instance.current_word)
  end
  
  def test_line
    ENV["TM_CURRENT_LINE"] = "foo bar"
    assert_equal("foo bar", @instance.current_line)
  end
  
  def test_tm_filename
    ENV["TM_FILENAME"] = "foo.rb"
    assert_equal("foo.rb", @instance.tm_filename)
  end
  
  def test_project_directory?
    ENV["TM_PROJECT_DIRECTORY"] = nil
    assert !@instance.project_directory?
    
    ENV["TM_PROJECT_DIRECTORY"] = "/"
    assert @instance.project_directory?
  end
  
  def test_selected_text
    ENV["TM_SELECTED_TEXT"] = "foo b"
    assert_equal("foo b", @instance.selected_text)
  end
  
  def test_project_directory
    ENV["TM_PROJECT_DIRECTORY"] = "/root"
    assert @instance.project_directory
  end
  
  def test_tm_directory
    ENV["TM_DIRECTORY"] = "/root/lib"
    assert @instance.tm_directory
  end
  
  def test_tm_file
    ENV["TM_FILEPATH"] = "/root/foo.rb"
    @instance.tm_file
  end
end