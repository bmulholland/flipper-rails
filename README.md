# DEPRECATION NOTICE

Either use a rails initializer as described on jnunemaker/flipper, or wait for [the upcoming, official version of flipper-rails.](https://github.com/jnunemaker/flipper/pull/739)

Original documentations below, for posterity.

# flipper-rails

Lightweight wrapper around Flipper to initialize nicely in rails apps

## Usage

### Installation

Add flipper-rails to your Gemfile:

```
gem 'flipper-rails'
```

If you'd like to use the adapter for ActiveRecord, Mongo or Redis, include the relevant Gem too:

```
gem 'flipper-active_record` # or flipper-mongo, flipper-redis
```

### Configuration

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

### In-App

Now to access flipper in-app, you can access it with `Flipper::Rails.flipper` e.g.  `Flipper::Rails.flipper[:search].enabled?`

## ActiveRecord

The Flipper gem has a migration built in to create the migration that creates the flipper tables: `rails g flipper:active_record`
