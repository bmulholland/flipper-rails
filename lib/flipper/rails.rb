module Flipper
  module Rails
    def self.flipper
      @flipper ||= Flipper.new(
        ::Rails.application.config.flipper[:adapter].new(
          ::Rails.application.config.flipper[:adapter_options] || {}
        )
      )
    end
  end
end

require 'flipper'

require 'flipper/rails/version'
require 'flipper/rails/options'
require 'flipper/rails/flipper_accessors'
require 'flipper/rails/railtie'
