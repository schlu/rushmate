module Rushmate
  # The Command Class is the main class in Rushmate.
  class Command
    include TextmateHelper
    attr_accessor :shell
    def initialize(&block)
      setup_shell
      self.instance_eval(&block)
    end
    
    def execute(thing)
      shell.execute(thing)
      $last_res
    end
    
    def method_missing(sym, *args, &block)
      execute sym.to_s
    end
    
    def exit
      Rushmate::Exit
    end
    
    def input
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