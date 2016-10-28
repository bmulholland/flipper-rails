require 'rails'

module Flipper
  module Rails
    class Railtie < ::Rails::Railtie
      config.flipper = Flipper::Rails::Options.new

      # add "_flipped?" accessor methods to controllers
      ActiveSupport.on_load(:action_controller) do
        include Flipper::Rails::FlipperAccessors
      end
    end
  end
end
