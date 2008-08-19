module Rushmate
  # The Rushmate::UserInput class is a convenience class
  # it provides higher level apis to methods defined in TextMate::UI
  module UserInput
    class << self
      # quick_menu_from_array takes an array of strings and presents them 
      # as menu options similar to the context menu
      # 
      # Return type is the string the user selected
      # 
      # This method blocks until the user chooses an option, if the user
      # presses esc the command is terminated without notifing the
      # command script
      def quick_menu_from_array(strings)
        strings[TextMate::UI.menu(strings)]
      end
    end
  end
end