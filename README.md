SolidusPaypalBraintree
======================

Introduction goes here.

Installation
------------

Add solidus_paypal_braintree to your Gemfile:

```ruby
gem 'solidus_paypal_braintree'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g solidus_paypal_braintree:install
```

Testing
-------

First bundle your dependencies, then run `rake`. `rake` will default to building the dummy app if it does not exist, then it will run specs, and [Rubocop](https://github.com/bbatsov/rubocop) static code analysis. The dummy app can be regenerated by using `rake test_app`.

```shell
bundle
bundle exec rake
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'solidus_paypal_braintree/factories'
```

Copyright (c) 2016 [name of extension creator], released under the New BSD License
