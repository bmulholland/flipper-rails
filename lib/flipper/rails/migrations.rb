module Flipper
  module Rails
    module Migrations
      def add_feature_flip(name)
        # calling disable on a non-existent flipper will create it in the disabled state
        unless Flipper::Rails.flipper[name].enabled?
          Flipper::Rails.flipper[name].disable
        end
      end

      def remove_feature_flip(name)
        gate = Flipper::Rails.flipper[name]
        Flipper::Rails.flipper.adapter.remove(gate)
      end

      def add_or_remove_feature_flip(name)
        reversible do |dir|
          dir.up do
            add_feature_flip(name)
          end
          dir.down do
            remove_feature_flip(name)
          end
        end
      end
    end
  end
end
