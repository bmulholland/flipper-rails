module Flipper
  module Rails
    class Options
      ATTRIBUTE_NAMES = [
        :adapter,
        :adapter_options
      ]
      private_constant :ATTRIBUTE_NAMES
      attr_accessor(*ATTRIBUTE_NAMES)

      def initialize(options={})
        self.adapter = options[:adapter]
        self.adapter_options = options[:adapter_options]
      end
    end
  end
end
