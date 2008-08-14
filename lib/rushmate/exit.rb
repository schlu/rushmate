module Rushmate
  module Exit
    class << self
      def discard
        exit 200
      end

      def replace_text(out = nil)
        print out if out
        exit 201
      end

      def replace_document(out = nil)
        print out if out
        exit 202
      end

      def insert_text(out = nil)
        print out if out
        exit 203
      end

      def insert_snippet(out = nil)
        print out if out
        exit 204
      end

      def show_html(out = nil)
        print out if out
        exit 205
      end

      def show_tool_tip(out = nil)
        print out if out
        exit 206
      end

      def create_new_document(out = nil)
        print out if out
        exit 207
      end
    end
  end
end