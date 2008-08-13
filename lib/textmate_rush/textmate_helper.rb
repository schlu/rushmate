module TextmateRush
  module TextmateHelper
    def tm_current_word
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
    
    def tm_project_directory
      root[ENV['TM_PROJECT_DIRECTORY'] + "/"]
    end
  end
end