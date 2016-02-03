module Flipper
  module Rails
    def flipper
      @flipper ||= Flipper.new(::Rails.application.config.flipper.adapter)
    end
  end
end

require 'flipper'

require 'flipper/rails/version'
require 'flipper/rails/options'
require 'flipper/rails/railtie'
