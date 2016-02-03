# flipper-rails

Lightweight wrapper around Flipper to initialize nicely in rails apps

## Usage

Configure your application (`config/application.rb` or `config/environments/<env>.rb`) with the adapter and options to use:

```
  config.flipper = {
    adapter: Flipper::Adapters::ActiveRecord,
    adapter_options: {}
  }
```

or

```
  config.flipper = {
    adapter: Flipper::Adapters::Redis,
    adapter_options: Redis::Namespace.new(:flipper_namespace, redis: Redis.new)
  }
```

## ActiveRecord

The Flipper gem has a migration built in to create the migration that creates the flipper tables: `rails g flipper:active_record`
