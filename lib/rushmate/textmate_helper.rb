module Rushmate
  # Rushmate::TextmateHelper provides convenience methods to Environment
  # variables that Textmate exposes to your command
  module TextmateHelper
    # returns the current line in the editor window
    def current_line
      ENV["TM_CURRENT_LINE"]
    end
    
    # returns the current word in the editor window
    def current_word
      ENV['TM_CURRENT_WORD']
    end
    
    # returns the directory of the active file in the 
    # editor window
    # 
    # return type Rush::Dir
    def tm_directory
      root[ENV['TM_DIRECTORY'] + "/"]
    end
    
    # returns the file of the active file in
    # the editor window
    # 
    # return type Rush::File
    def tm_file
      root[ENV['TM_FILEPATH']]
    end
    
    # returns the file name of the active file in the
    # editor window
    def tm_filename
      ENV["TM_FILENAME"]
    end
    
    # indicates if the command was activeted from a file
    # within a textmate project
    def project_directory?
      ENV['TM_PROJECT_DIRECTORY']
    end
    
    # returns the directory of the textmate project
    # 
    # return type Rush::Dir
    def project_directory
      root[ENV['TM_PROJECT_DIRECTORY'] + "/"]
    end
    
    # returns the text selected within Textmate
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