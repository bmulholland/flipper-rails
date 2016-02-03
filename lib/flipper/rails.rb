module Flipper
  module Rails
    def flipper
      @flipper ||= Flipper.new(
        ::Rails.application.config.flipper.adapter.new(
          ::Rails.application.config.flipper.adapter_options
        )
      )
    end
  end
end

require 'flipper'

require 'flipper/adapters/active_record'
require 'flipper/adapters/instrumented'
require 'flipper/adapters/memoizable'
require 'flipper/adapters/memory'
require 'flipper/adapters/mongo'
require 'flipper/adapters/pstore'
require 'flipper/adapters/redis'

require 'flipper/rails/version'
require 'flipper/rails/options'
require 'flipper/rails/railtie'
