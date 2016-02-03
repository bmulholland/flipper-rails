require 'rails'

module Flipper
  module Rails
    class Railtie < ::Rails::Railtie
      config.flipper = Flipper::Rails::Options.new
    end
  end
end
