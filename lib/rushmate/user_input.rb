module Rushmate
  module UserInput
    class << self
      def quick_menu_from_array(strings)
        strings[TextMate::UI.menu(strings)]
      end
    end
  end
end