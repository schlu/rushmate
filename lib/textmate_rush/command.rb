module TextmateRush
  class Command
    include TextmateHelper
    attr_accessor :shell
    def initialize()
      self.shell = Rush::Shell.new
    end
    
    def run(&block)
      self.instance_eval(&block)
    end
    
    def execute(thing)
      shell.execute(thing)
      $last_res
    end
    
    def method_missing(sym, *args, &block)
      execute sym.to_s
    end
    
  end
end