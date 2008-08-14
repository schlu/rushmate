module Rushmate
  module TextmateHelper
    def current_line
      ENV["TM_CURRENT_LINE"]
    end
    
    def current_word
      ENV['TM_CURRENT_WORD']
    end
    
    def tm_directory
      root[ENV['TM_DIRECTORY'] + "/"]
    end
    
    def tm_file
      root[ENV['TM_FILEPATH']]
    end
    
    def tm_filename
      ENV["TM_FILENAME"]
    end
    
    def project_directory?
      ENV['TM_PROJECT_DIRECTORY']
    end
    
    def project_directory
      root[ENV['TM_PROJECT_DIRECTORY'] + "/"]
    end
    
    def selected_text
      ENV["TM_SELECTED_TEXT"]
    end
    
    
    alias :tm_current_line :current_line
    alias :tm_current_word :current_word
    alias :tm_project_directory? :project_directory?
    alias :tm_project_directory :project_directory
    alias :tm_selected_text :selected_text
  end
end