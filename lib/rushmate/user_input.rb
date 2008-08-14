module Rushmate
  module UserInput
    class << self
      def select_from_array(strings)
        strings[TextMate::UI.menu(strings)]
      end
    end
  end
end