# flipper-rails

Lightweight wrapper around Flipper to initialize nicely in rails apps

## Usage

### Configuration

Configure your application (`config/application.rb` or `config/environments/<env>.rb`) with the adapter and options to use:

```
  require 'flipper/adapters/active_record'

  config.flipper = {
    adapter: Flipper::Adapters::ActiveRecord,
    adapter_options: {}
  }
```

or

```
  require 'flipper/adapters/redis'

  config.flipper = {
    adapter: Flipper::Adapters::Redis,
    adapter_options: Redis::Namespace.new(:flipper_namespace, redis: Redis.new)
  }
```

Unfortunately the adapters cannot be included by this gem, so you must do so manually.

### In-App

Now to access flipper in-app, you can access it with `Flipper::Rails.flipper` e.g.  `Flipper::Rails.flipper[:search].enabled?`

## ActiveRecord

The Flipper gem has a migration built in to create the migration that creates the flipper tables: `rails g flipper:active_record`
