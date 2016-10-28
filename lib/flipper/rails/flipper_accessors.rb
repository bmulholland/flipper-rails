module Flipper
  module Rails

    # add "_flipped?" accessor methods to any class including this module
    module FlipperAccessors
      def self.included(base)
        alias_method_chain :method_missing, :flipper_accessors
      end

      def method_missing_with_flipper_accessors(method, *args, &block)
        method_match = method.to_s.match(/(.*)_flipped\?$/)

        if method_match
         flipper_name = method_match[1]
          Flipper::Rails.flipper[flipper_name].enabled?
        else
          method_missing_without_flipper_accessors(method, *args, &block)
        end
      end
    end
  end
end
