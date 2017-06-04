require 'administrate/field/base'

module Administrate
  module Field
    class CollectionSelect < Base
      class Engine < ::Rails::Engine
      end

      def to_s
        @show_text ||= options.fetch(:show_text, data)
      end

      def selectable_collection
        collection
      end

      def selectable_value
        value_method
      end

      def selectable_text
        text_method
      end

      def selectable_options
        options_method
      end

      def multiple
        multiple_method
      end

      def label
        @label ||= options.fetch(:label, attribute)
      end

      private

      def collection
        @collection ||= options.fetch(:collection, [])
      end

      def value_method
        @value_method ||= options.fetch(:value_method, nil)
      end

      def text_method
        @text_method ||= options.fetch(:text_method, nil)
      end

      def options_method
        @options_method ||= options.fetch(:options, nil)
      end

      def multiple_method
        @multiple_method ||= options.fetch(:multiple, nil)
      end
    end
  end
end
