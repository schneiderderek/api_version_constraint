# ApiVersionConstraint

A stupid simple gem that is a constraint matcher for use in a rails routes file
that matches the `v` query param against the value passed into the constructor.
See the Usage section for more details.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'api_version_constraint'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install api_version_constraint

## Usage

Simple Usage:

```ruby
ApiVersionConstraint.new('api-version')
```

Usage in `routes.rb`:

```ruby
constraints ApiVersionConstraint.new('v1') do
end
```

## References

See [Advanced Constraints](http://guides.rubyonrails.org/routing.html#advanced-constraints)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/schneiderderek/api_version_constraint. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

