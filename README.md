# pokey_runner

pokey_runner is a standalone process for generating [Pokey](https://github.com/ccallebs/pokey) hooks. Simply
setup the application as described below and you can easily simulate production
data on local/QA environments.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pokey_runner'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pokey_runner

## Usage

### Adding hooks

    $ pokey_runner hook custom_name
    
This will add a custom hook to your specified hook directory. Please keep in mind that all hooks must be suffixed with `Hook`. For example, the above would generate the `CustomNameHook` class.

### Running the process

    $ pokey_runner start

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/pokey_runner. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

