# Razer

Razer is a small library to flat Array-like objects in Ruby.

It consists of single a class _Flattener_ with one single method _flatten_ which takes an array (possibly composed of more nested arrays) traverses it flattening it into a uni-dimensional one in O(n) time and space _n_ being the sum of all the sizes of the composing arrays.

It is very small, and it's fully covered in tests.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'razer'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install razer

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/goyox86/razer. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

