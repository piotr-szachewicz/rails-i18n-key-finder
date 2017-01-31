# I18nKeyFinder [![Build Status](https://travis-ci.org/piotr-szachewicz/rails-i18n-key-finder.svg?branch=master)](https://travis-ci.org/piotr-szachewicz/rails-i18n-key-finder)

In some complex web application sometimes it's difficult to find out where did
your I18n translations come from.

In these situations this gem comes to help! It allows you to temporarily display
the i18n keys instead of their values in the web application.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'i18n_key_finder', github: 'piotr-szachewicz/rails-i18n-key-finder'
```

And then execute:

    $ bundle

After that you need to run the I18nKeyFinder generator:

    $ rails generate i18n_key_finder:install

## Usage

You can see the I18n keys instead of their values in the application if you
start the rails server with the environment variable `SHOW_I18N_KEYS` set to
true. For example:

    $ SHOW_I18N_KEYS=true bundle exec rails server

If you don't want to see the keys, just start your server as you normally
would:

    $ bundle exec rails server
    
Here's how the gem works with the example Rails application available in the [spec/dummy](spec/dummy) directory. 

![i18n-helper](https://cloud.githubusercontent.com/assets/4949616/22485031/4898996a-e804-11e6-8187-f86211f785d0.gif)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/piotr-szachewicz/rails-i18n-key-finder. This project is intended to be a safe, welcoming space for collaboration.

