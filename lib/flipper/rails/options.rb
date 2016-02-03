module Flipper
  module Rails
    class Options
      ATTRIBUTE_NAMES = [
        :adapter
      ]
      private_constant :ATTRIBUTE_NAMES
      attr_accessor(*ATTRIBUTE_NAMES)

      def initialize(options={})
        self.adapter = options[:adapter]
      end
    end
  end
end
