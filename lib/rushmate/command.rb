module Rushmate
  # The Command Class is the main class in Rushmate.
  class Command
    include TextmateHelper
    attr_accessor :shell
    # Class construction is designed to take a block that gets executed
    # as part of the class
    # 
    # Example:
    # 
    #   Rushmate::Command.new {
    #     exit.show_tool_tip project_directory['**/*.rb'].line_count
    #   }
    def initialize(&block)
      setup_shell
      self.instance_eval(&block) if block
    end
    
    # execute the parameter against a Rush::Shell instance
    def execute(thing)
      shell.execute(thing)
      $last_res
    end
    
    # anything not defined in Rushmate::Command should be defered to 
    # Rushmate::Command#execute
    def method_missing(sym, *args, &block)
      execute sym.to_s
    end
    
    # return a reference to Rushmate::Exit
    # This is useful for shortening up your code
    # Example:
    # 
    #   exit.show_tool_tip("nothing found")
    def exit
      Rushmate::Exit
    end
    
    # return a reference to Rushmate::UserInput
    # This is useful for shortening up your code
    # Example:
    # 
    #   user_input.quick_menu_from_array(['opt 1', 'opt 2'])
    def user_input
      Rushmate::UserInput
    end
    
    private
      def setup_shell
        self.shell = Rush::Shell.new
        shell.class.class_eval do
          def print_result(res)
          end
        end
      end
  end
end