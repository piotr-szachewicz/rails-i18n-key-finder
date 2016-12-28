# I18nHelper

In some complex web application sometimes it's difficult to find out where did
your I18n translations come from.

In this situations this gem comes to help! It allows you to temporarily display
the i18n keys instead of their values in the web application.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'i18n_helper', github: 'piotr-szachewicz/rails-i18n-keys'
```

And then execute:

    $ bundle

After that you need to run the I18nHelper generator:

    $ rails generate i18n_helper:install

## Usage

After restarting the application you should see the I18n keys instead of their
values.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/piotr-szachewicz/i18n_helper. This project is intended to be a safe, welcoming space for collaboration.

