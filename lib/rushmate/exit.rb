module Rushmate
  # Rushmate::Exit provides a list of methods for exiting 
  # a command and changing the output type in Textmate
  # 
  # For instance if you specified the command to be
  # output: Discard
  # it may be benificial to show a tooltip if the command
  # could not do what it was tasked to do
  # 
  # Example:
  # 
  #   Rushmate::Exit.show_tool_tip("could not find file")
  module Exit
    class << self
      def discard
        exit 200
      end

      # changes output to replace selected text
      def replace_text(out = nil)
        print out if out
        exit 201
      end

      # changes output to replace selected document
      def replace_document(out = nil)
        print out if out
        exit 202
      end

      # changes output to insert text at editor position
      def insert_text(out = nil)
        print out if out
        exit 203
      end

      # changes output to insert a snippet at editor position
      def insert_snippet(out = nil)
        print out if out
        exit 204
      end

      # changes output to show html
      def show_html(out = nil)
        print out if out
        exit 205
      end

      # changes output to show a tool tip
      def show_tool_tip(out = nil)
        print out if out
        exit 206
      end

      # changes output to create a new document
      def create_new_document(out = nil)
        print out if out
        exit 207
      end
    end
  end
end